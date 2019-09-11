<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Loan_register extends CI_Controller {

	private $page_title;
	private $page_metakey;
	private $page_metadesc;

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Config_model');
		$this->load->model('Menu_model');
		$this->load->model('Loan_register_model');
		$this->load->model('Field_model');
		$this->load->library('email');
		$this->load->library('My_library');
		$this->My_library = new My_library();
	}

	public function index()
	{
		$data = array();
		$data['config'] 		= 	$this->Config_model->get_list();
		$data['page_title'] 	= 	$data['config']['title'];
		$data['page_keyword'] 	= 	$data['config']['meta_keyword'];
		$data['page_descript'] 	= 	$data['config']['meta_descript'];
		$data['page_phone'] 	= 	$data['config']['phone'];
		$data['page_email'] 	= 	$data['config']['email'];
		$data['page_facebook'] 	= 	$data['config']['facebook'];
		$data['page_gplus'] 	= 	$data['config']['gplus'];
		$data['page_image'] 	= 	'';

		$data['menu']			= 	$this->Menu_model->rows();
		$data['field']			=	$this->Field_model->get_list();
		$data['borrow_group']	=	$this->Field_model->get_list_group();

		$this->load->view('web/layout/head', $data);
		$this->load->view('web/layout/top_header', $data);
		$this->load->view('web/layout/nav', $data);
		$this->load->view('web/Loan_register_view', $data);
		$this->load->view('web/layout/footer_view', $data);
	}

	public function register(){
		$data = array();
		$array['config'] 	= 	$this->Config_model->get_list();
		$data = array(
			'fullname'		=>	$this->input->post('fullname'),
			'phone'			=>	$this->input->post('phone'),
			'cmtnd'			=>	$this->input->post('cmtnd'),
			'address'		=>	$this->input->post('address'),
			'province'		=>	$this->input->post('province'),
			'type'			=>	$this->input->post('type'),
			'field1'		=>	$this->input->post('field1'),
			'field2'		=>	$this->input->post('field2'),
			'field3'		=>	$this->input->post('field3'),
			'field4'		=>	$this->input->post('field4'),
			'field5'		=>	$this->input->post('field5'),
			'field6'		=>	$this->input->post('field6'),
			'field7'		=>	$this->input->post('field7'),
			'field8'		=>	$this->input->post('field8')
		);
		$borrow_group = $this->Loan_register_model->get_name_borrow_group($this->input->post('type'));
		$result = $this->Loan_register_model->add_new($data);
		/*Send mail*/

		$mail_from 	= "Vaytien24h.vn";
		$mail_to 	= $array['config']['email'];
		$name 		= $this->input->post('fullname');
		$subject 	= "Đăng ký vay nhanh";
		$content 	= "<strong>Họ tên: </strong>".$this->input->post('fullname')."<br/>";
		$content 	.="<strong>Điện thoại: </strong>".$this->input->post('phone')."<br/>";
		$content 	.="<strong>Địa chỉ: </strong>".$this->input->post('address')."<br/>";
		$content 	.="<strong>Thành phố: </strong>".$this->input->post('province')."<br/>";
		$content 	.="<strong>Hình thức vay: </strong>".$borrow_group['name']."<br/>";
		$content 	.="<strong>Số tiền muốn vay: </strong>".$this->input->post('field1')."đ<br/>";
		$this->send_email($mail_from, $mail_to, $name, $subject, $content);
		/*End send mail*/
	}

	public function send_email($mail_from, $mail_to, $name = NULL, $subject = NULL, $content = NULL) {
		$this->load->library('email');
		$config['protocol'] = 'sendmail';
		$config['mailpath'] = '/usr/sbin/sendmail';
		$config['charset'] = 'utf-8';
		$config['mailtype'] = 'html';
		$config['wordwrap'] = TRUE;
		$this->email->initialize($config);

		$this->email->from($mail_from, 'Vaytien24h.vn');
		$this->email->to($mail_to);
		$this->email->subject($subject);
		$this->email->message($content);
		
		if($this->email->send()){
			$this->session->set_flashdata('success_message', ' Gửi mail thành công!');
			redirect('/Contact/submit_contact_result');
		}else{
			$this->session->set_flashdata('error_message', ' Có lỗi trong quá trình xử lý. Xin vui lòng thử lại');
			redirect('/Contact/submit_contact_result');
		}
	}

	public function success(){
		$data = array();
		$data['config'] 		= 	$this->Config_model->get_list();
		$data['page_title'] 	= 	$data['config']['title'];
		$data['page_keyword'] 	= 	$data['config']['meta_keyword'];
		$data['page_descript'] 	= 	$data['config']['meta_descript'];
		$data['page_phone'] 	= 	$data['config']['phone'];
		$data['page_email'] 	= 	$data['config']['email'];
		$data['page_facebook'] 	= 	$data['config']['facebook'];
		$data['page_gplus'] 	= 	$data['config']['gplus'];
		$data['page_image'] 	= 	"";
		/* Show message */
		if ($this->session->flashdata('success_message')) {
			$data['success_message'] = $this->My_library->show_message('success', $this->session->flashdata('success_message'));
		}
		if ($this->session->flashdata('error_message')) {
			$data['error_message'] = $this->My_library->show_message('error', $this->session->flashdata('error_message'));
		}
		/* End Show message */

		$data['menu']	= 	$this->Menu_model->rows();

		$this->load->view('web/layout/head', $data);
		$this->load->view('web/layout/top_header', $data);
		$this->load->view('web/layout/nav', $data);
		$this->load->view('web/Loan_register_success_view', $data);
		$this->load->view('web/layout/footer_view', $data);
	}
}
