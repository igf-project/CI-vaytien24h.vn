<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Search extends CI_Controller {

	private $page_title;
	private $page_metakey;
	private $page_metadesc;

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Config_model');
		$this->load->model('Search_model');
		$this->load->model('Menu_model');
		$this->load->model('Post_model');
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

		$where = '1=1';
		$order = array('cdate'=>'DESC');
		/* GET */
		$parameters = $this->input->get();
		$data['q'] = isset($parameters['q']) ? $parameters['q'] : '';
		
		if($data['q'] != ''){
			if($data['q'] != ''){
				$where .= " AND title LIKE '%".$data['q']."%' OR intro LIKE '%".$data['q']."%'";
			}
		}
		/* End GET */
		/* Set Pagging */
		$limit_per_page = 25;
		$uri_segment 	= 4;
		$num_links		= 3;
		$base_url 		= base_url().'tim-kiem/index/';
		$page = ($this->uri->segment(4)) ? ($this->uri->segment(4) - 1) : 0;
		$total_records 	= $this->Post_model->count_all();

		if ($total_records > 0)
		{
			$data["links"] = $this->My_library->paging($total_records, $limit_per_page, $uri_segment, $num_links, $base_url);
		}
		/* End Set Pagging */
		$data["result"] = $this->Post_model->rows($where, $order, $page, $limit_per_page);

		$data['menu']	= 	$this->Menu_model->rows();
		$data['listHot'] = $this->Post_model->get_list("isactive=1 AND ishot='1' LIMIT 0,6");

		$this->load->view('web/layout/head', $data);
		$this->load->view('web/layout/top_header', $data);
		$this->load->view('web/layout/nav', $data);
		$this->load->view('web/Search_view', $data);
		$this->load->view('web/layout/footer_view', $data);
	}
}
