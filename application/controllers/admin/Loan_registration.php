<?php
defined('BASEPATH') OR exit('No direct script access allowed');

Class Loan_registration extends CI_controller {

	public function __construct() {
		parent::__construct();
		if ($this->session->has_userdata('LOGIN_ADMIN')==false) {
			header("location: ".base_url()."admin/login");
		}
		$this->load->model('admin/Loan_registration_model');
		$this->load->model('admin/Borrow_group_model');
		$this->load->model('admin/Field_model');
		$this->load->library('My_library');
		$this->My_library = new My_library();
	}

	public function index() {
		$data = array();
		$where = '1=1';
		$order = array('cdate'=>'DESC');

		/* GET */
		$parameters = $this->input->get();
		$data['q'] = isset($parameters['q']) ? $parameters['q'] : '';
		$data['action'] = isset($parameters['action']) ? $parameters['action'] : 'all';

		if($data['q'] != ''){
			$where .= " AND fullname LIKE '%".$data['q']."%'";
		}
		if($data['action'] != '' AND $data['action'] != 'all'){
			$where .= " AND isactive='".$data['action']."'";
		}
		/* End GET */
		/* Set Pagging */
		$limit_per_page = 25;
		$uri_segment 	= 4;
		$num_links		= 3;
		$base_url 		= base_url().'admin/Loan_registration/index/';
		$page = ($this->uri->segment(4)) ? ($this->uri->segment(4) - 1) : 0;
		$total_records 	= $this->Loan_registration_model->count_all();

		if ($total_records > 0)
		{
			$data["links"] = $this->My_library->paging($total_records, $limit_per_page, $uri_segment, $num_links, $base_url);
		}
		/* End Set Pagging */
		$data["result"] = $this->Loan_registration_model->rows($where, $order, $page, $limit_per_page);
		/* Show message */
		if ($this->session->flashdata('success_message')) {
			$data['success_message'] = $this->My_library->show_message('success', $this->session->flashdata('success_message'));
		}
		if ($this->session->flashdata('error_message')) {
			$data['error_message'] = $this->My_library->show_message('error', $this->session->flashdata('error_message'));
		}
		/* End Show message */

		$this->load->view('admin/layout/header_view');
		$this->load->view('admin/layout/menu_header_view');
		$this->load->view('admin/layout/asside_leftmenu_view');
		$this->load->view('admin/Loan_registration_view/list', $data);
		$this->load->view('admin/layout/right_footer_view');
		$this->load->view('admin/layout/footer_view');
	}

	// Add form
	public function add(){
		$data = array();
		$data['parent'] = $this->Borrow_group_model->getListCbItem();
		$data['field'] = $this->Field_model->get_list("isactive=1");
		$this->load->view('admin/layout/header_view');
		$this->load->view('admin/layout/menu_header_view');
		$this->load->view('admin/layout/asside_leftmenu_view');
		$this->load->view('admin/Loan_registration_view/add', $data);
		$this->load->view('admin/layout/right_footer_view');
		$this->load->view('admin/layout/footer_view');
	}

	// Edit form
	public function edit($id){
		$data = array();
		$data['id'] = $id;
		$data['result'] = $this->Loan_registration_model->getOne($id);
		$data['parent'] = $this->Borrow_group_model->getOne($data['result']['type']);
		$data['field'] = $this->Field_model->get_list("isactive=1");
		$this->load->view('admin/layout/header_view');
		$this->load->view('admin/layout/menu_header_view');
		$this->load->view('admin/layout/asside_leftmenu_view');
		$this->load->view('admin/Loan_registration_view/edit', $data);
		$this->load->view('admin/layout/right_footer_view');
		$this->load->view('admin/layout/footer_view');
	}

	// Save add form
	public function do_add(){
		$data = array(
			'fullname'		=>	$this->input->post('txt_name'),
			'type'			=>	(int)$this->input->post('cbo_type'),
			'phone'			=>	$this->input->post('txt_phone'),
			'province'		=>	$this->input->post('province'),
			'address'		=>	$this->input->post('txt_address'),
			'field1'		=>	$this->input->post('field1'),
			'field2'		=>	$this->input->post('field2'),
			'field3'		=>	$this->input->post('field3'),
			'field4'		=>	$this->input->post('field4'),
			'field5'		=>	$this->input->post('field5'),
			'field6'		=>	$this->input->post('field6'),
			'field7'		=>	$this->input->post('field7'),
			'field8'		=>	$this->input->post('field8'),
			'status'		=>	1,
			'isactive'		=>	(int)$this->input->post('optactive')
		);
		$result = $this->Loan_registration_model->add_new($data);

		if($result){
			$this->session->set_flashdata('success_message', 'Thêm mới thành công!');
			redirect('/admin/Loan_registration/');
		}else{
			$this->session->set_flashdata('error_message', 'Có lỗi trong quá trình xử lý. Xin vui lòng thử lại');
			redirect('/admin/Loan_registration/');
		}
	}

	// Save edit form
	public function do_update(){
		$id = (int)$this->input->post('txtid');
		$data 	= 	array(
			'status'		=>	$this->input->post('opt_status')
		);
		$result = $this->Loan_registration_model->update($id, $data);
		if($result){
			$this->session->set_flashdata('success_message', 'Cập nhật thành công!');
			redirect('/admin/Loan_registration/');
		}else{
			$this->session->set_flashdata('error_message', 'Có lỗi trong quá trình xử lý. Xin vui lòng thử lại');
			redirect('/admin/Loan_registration/');
		}
	}

	// Active
	public function active($id){
		$result = $this->Loan_registration_model->active($id);
		if($result){
			redirect('/admin/Loan_registration/');
		}else{
			redirect('/admin/Loan_registration/');
		}
	}

	// Ishot
	public function ishot($id){
		$result = $this->Loan_registration_model->hot($id);
		if($result){
			redirect('/admin/Loan_registration/');
		}else{
			redirect('/admin/Loan_registration/');
		}
	}

	// Delete
	public function delete(){
		$id 	= $this->uri->segment(4);
		$result = $this->Loan_registration_model->delete($id);
		if($result){
			redirect('/admin/Loan_registration/');
		}
	}

	// Ajax order
	public function saveLoan_registration(){
		$id 	= (int)$this->input->post('id');
		$value 	= (int)$this->input->post('value');
		$this->Loan_registration_model->saveLoan_registration($id, $value);
	}
}

?>