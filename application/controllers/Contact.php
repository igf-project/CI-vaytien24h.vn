<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contact extends CI_Controller {

	private $page_title;
	private $page_metakey;
	private $page_metadesc;

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Config_model');
		$this->load->model('Menu_model');
		$this->load->model('Module_model');
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

		$this->load->view('web/layout/head', $data);
		$this->load->view('web/layout/top_header', $data);
		$this->load->view('web/layout/nav', $data);
		$this->load->view('web/Contact_view', $data);
		$this->load->view('web/layout/footer_view', $data);
	}

	public function submit_contact()
	{
		$data = array();
		$data['config'] 		= 	$this->Config_model->get_list();
		$mail_from 	= $this->input->post('contact_email');
		$mail_to 	= $data['config']['email'];
		$name 		= $this->input->post('contact_sur_name');
		$subject 	= $this->input->post('contact_subject');
		$content 	= $this->input->post('contact_content');
		$this->send_email($mail_from, $mail_to, $name, $subject, $content);
	}

	public function submit_contact_result()
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
		$data['page_image'] 	= 	"";

		/* Show message */
		if ($this->session->flashdata('success_message')) {
			$data['success_message'] = $this->My_library->show_message('success', $this->session->flashdata('success_message'));
		}
		if ($this->session->flashdata('error_message')) {
			$data['error_message'] = $this->My_library->show_message('error', $this->session->flashdata('error_message'));
		}
		/* End Show message */

		$data['menu']			= 	$this->Menu_model->rows();

		$this->load->view('web/layout/head', $data);
		$this->load->view('web/layout/top_header', $data);
		$this->load->view('web/layout/nav', $data);
		$this->load->view('web/Submit_contact_result_view', $data);
		$this->load->view('web/layout/footer_view', $data);
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
}
