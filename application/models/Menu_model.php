<?php
Class Menu_model extends CI_Model {
	private $table;

	function __construct() {
		parent::__construct();

		$this->table = 'tbl_menu';
	}

	public function get_list($strwhere=' 1=1'){
		$this->db->select('*');
		$this->db->where($strwhere);
		$query = $this->db->get($this->table);
		return $query->result_array();
	}

	// get rows
	public function rows($where=NULL, $order=NULL, $page=0, $psize=25, $par_id=0) {
		$this->db->cache_on();
		$this->db->select('*');
		
		$start = $page * $psize;
		$this->db->limit($psize, $start);

		if (!empty($where)) {
			$this->db->where($where);
		}

		if (isset($par_id)) {
			$this->db->where('par_id', $par_id);
		}

		$this->db->order_by('order', 'ASC');

		$result = $this->db->get($this->table)->result_array();
		// echo $this->db->last_query();
		$count = count($result);
		for ($i=0;$i < $count; $i++) {
			$result[$i]['url'] = $this->genarateUrl($result[$i]['view_type'], $result[$i]['cata_id'], $result[$i]['post_group_id'], $result[$i]['post_id'], $result[$i]['link']);

			$query_mark = $this->db->query("SELECT * FROM $this->table WHERE par_id='" . $result[$i]['id'] . "'");
			$result[$i]['child'] = $query_mark->result_array();

			$count_child = count($result[$i]['child']);
			if($count_child>0){
				for($j=0; $j< $count_child; $j++){
					$result[$i]['child'][$j]['url'] = $this->genarateUrl($result[$i]['child'][$j]['view_type'], $result[$i]['child'][$j]['cata_id'], $result[$i]['child'][$j]['post_group_id'], $result[$i]['child'][$j]['post_id'], $result[$i]['child'][$j]['link']);
				}
			}
		}
		return $result;
	}

	public function genarateUrl($view_type=NULL,$cata_id=NULL,$post_group_id=NULL,$post=NULL,$link=NULL){
		if($view_type == 'link'){
			$url = $link;
		}else if($view_type == 'catalog'){
			$catalog = $this->getCatalogById($cata_id);
			$url = base_url().'san-pham/'.$catalog['code'];
		}
		else if($view_type == 'category'){
			$category = $this->getGroupPostById($post_group_id);
			$url = base_url().'tin-tuc/'.$category['code'];
		}
		else if($view_type == 'post'){
			$post = $this->getPostById($post);
			$url = base_url().'tin-tuc/'.$post['code'].'.html';
		}
		return $url;
	}

	// Lấy tổng số record
	public function count_all($where=null) {
		$count = 0;
		if (!isset($where)) {
			$count = $this->db->from($this->table)->count_all_results();            
		} else {
			$count = $this->db->where($where)->from($this->table)->count_all_results();            
		}
		return $count;
	}

	public function getOne($id){
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('id', $id);
		$query = $this->db->get();
		return $query->row_array();
	}

	public function getListCbItem($parentid = 0,$space = '', $trees = NULL){
		if(!$trees) $trees = array(); 
		$result = $this->db->query("SELECT id, par_id, title FROM $this->table WHERE isactive=1 AND par_id=".$parentid);
		if($result->num_rows() > 0){
			$arr = $result->result_array();
			foreach ($arr as $item) {
				$trees[] 	= 	array('id'=>$item['id'],'title'=>$space.$item['title']);  
				$trees 		= 	$this->getListCbItem($item['id'], $space.'|---', $trees); 
			}  
		}
		return $trees; 
	}

	public function getCatalogById($id){
		$this->db->select('id, name, code');
		$this->db->where('isactive', 1);
		$this->db->where('id', $id);
		$query = $this->db->get('tbl_catalog');
		return $query->row_array();
	}

	public function getGroupPostById($id){
		$this->db->select('id, name, code');
		$this->db->where('isactive', 1);
		$this->db->where('id', $id);
		$query = $this->db->get('tbl_post_group');
		// echo $this->db->last_query();
		return $query->row_array();
	}

	public function getPostById($id){
		$this->db->select('id, title, code');
		$this->db->where('isactive', 1);
		$this->db->where('id', $id);
		$query = $this->db->get('tbl_post');
		return $query->row_array();
	}
}

?>