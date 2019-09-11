<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	private $page_title;
	private $page_metakey;
	private $page_metadesc;

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Config_model');
		$this->load->model('Home_model');
		$this->load->model('Menu_model');
		$this->load->model('Feedback_model');
		$this->load->model('Post_model');
		$this->load->model('Field_model');
		$this->load->model('Module_model');
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

		$order_news = array('cdate' => 'DESC');
		$data['news']			=	$this->Module_model->getOne('box3');
		$data['service']		=	$this->Module_model->getOne('box1');
		$data['field']			=	$this->Field_model->get_list();
		$data['borrow_group']	=	$this->Field_model->get_list_group();
		$data['menu']			= 	$this->Menu_model->rows();
		$data['slider']			= 	$this->Home_model->get_slide();
		$data['feedback']		= 	$this->Feedback_model->get_list();
		$data['box5']			=	$this->Module_model->getOne('box5');
		$data['box2']			=	$this->Module_model->getOne('box2');

		$this->load->view('web/layout/head', $data);
		$this->load->view('web/layout/top_header', $data);
		$this->load->view('web/layout/nav', $data);
		$this->load->view('web/main_slide_view', $data);
		$this->load->view('web/home_view', $data);
		$this->load->view('web/layout/footer_view', $data);
	}

	public function loan_register(){
		
	}
}
