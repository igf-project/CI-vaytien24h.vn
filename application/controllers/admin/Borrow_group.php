<?php
defined('BASEPATH') OR exit('No direct script access allowed');

Class Borrow_group extends CI_controller {

	public function __construct() {
		parent::__construct();
		if ($this->session->has_userdata('LOGIN_ADMIN')==false) {
			header("location: ".base_url()."admin/login");
		}
		$this->load->model('admin/Borrow_group_model');
		$this->load->library('My_library');
		$this->My_library = new My_library();
	}

	public function index() {
		$data = array();
		$where = '1=1';
		$order = NULL;

		/* GET */
		$parameters = $this->input->get();
		$data['q'] = isset($parameters['q']) ? $parameters['q'] : '';
		$data['action'] = isset($parameters['action']) ? $parameters['action'] : 'all';

		if($data['q'] != ''){
			$where .= " AND name LIKE '%".$data['q']."%'";
		}
		if($data['action'] != '' AND $data['action'] != 'all'){
			$where .= " AND isactive='".$data['action']."'";
		}
		/* End GET */
		/* Set Pagging */
		$limit_per_page = 25;
		$uri_segment 	= 4;
		$num_links		= 3;
		$base_url 		= base_url().'admin/Borrow_group/';
		$page = ($this->uri->segment(4)) ? ($this->uri->segment(4) - 1) : 0;
		$total_records 	= $this->Borrow_group_model->count_all();

		if ($total_records > 0)
		{
			$data["links"] = $this->My_library->paging($total_records, $limit_per_page, $uri_segment, $num_links, $base_url);
		}
		/* End Set Pagging */
		$data["result"] = $this->Borrow_group_model->rows($where, $order, $page, $limit_per_page);
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
		$this->load->view('admin/Borrow_group_view/list', $data);
		$this->load->view('admin/layout/right_footer_view');
		$this->load->view('admin/layout/footer_view');
	}

	// Add form
	public function add(){
		$data = array();
		$this->load->view('admin/layout/header_view');
		$this->load->view('admin/layout/menu_header_view');
		$this->load->view('admin/layout/asside_leftmenu_view');
		$this->load->view('admin/Borrow_group_view/add', $data);
		$this->load->view('admin/layout/right_footer_view');
		$this->load->view('admin/layout/footer_view');
	}

	// Edit form
	public function edit(){
		$data = array();
		$data['id'] = $this->uri->segment(4);
		$data['result'] = $this->Borrow_group_model->getOne($data['id']);
		$this->load->view('admin/layout/header_view');
		$this->load->view('admin/layout/menu_header_view');
		$this->load->view('admin/layout/asside_leftmenu_view');
		$this->load->view('admin/Borrow_group_view/edit', $data);
		$this->load->view('admin/layout/right_footer_view');
		$this->load->view('admin/layout/footer_view');
	}


	// Save add form
	public function do_add(){
		$data = array(
			'name'			=>	addslashes($this->input->post('txt_name')),
			'isactive'		=>	(int)$this->input->post('optactive')
		);
		$result = $this->Borrow_group_model->add_new($data);
		if($result){
			$this->session->set_flashdata('success_message', 'Thêm mới thành công!');
			redirect('/admin/Borrow_group/');
		}else{
			$this->session->set_flashdata('error_message', 'Có lỗi trong quá trình xử lý. Xin vui lòng thử lại');
			redirect('/admin/Borrow_group/');
		}
	}

	// Save edit form
	public function do_edit(){
		$id = (int)$this->input->post('txtid');
		$data 	= 	array(
			'name'		=>	addslashes($this->input->post('txt_name')),
			'isactive'		=>	(int)$this->input->post('optactive')
		);
		$result = $this->Borrow_group_model->update($id, $data);
		if($result){
			$this->session->set_flashdata('success_message', 'Cập nhật thành công!');
			redirect('/admin/Borrow_group/');
		}else{
			$this->session->set_flashdata('error_message', 'Có lỗi trong quá trình xử lý. Xin vui lòng thử lại');
			redirect('/admin/Borrow_group/');
		}
	}

	// Active
	public function active($id){
		$result = $this->Borrow_group_model->active($id);
		if($result){
			redirect('/admin/Borrow_group/');
		}else{
			redirect('/admin/Borrow_group/');
		}
	}

	// Delete
	public function delete(){
		$id 	= $this->uri->segment(4);
		$result = $this->Borrow_group_model->delete($id);
		if($result){
			redirect('/admin/Borrow_group/');
		}
	}

	// Ajax order
	public function saveOrder(){
		$id 	= (int)$this->input->post('id');
		$value 	= (int)$this->input->post('value');
		$this->Borrow_group_model->saveOrder($id, $value);
	}
}

?>