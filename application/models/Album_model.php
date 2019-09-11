<?php
class Album_model extends CI_Model {

	public function __construct(){
        parent::__construct();
    }

    public function get_list(){
        $this->db->select('*');
        $this->db->where('isactive','1');
        $this->db->order_by('order','ASC');
        $query = $this->db->get('tbl_album');
        return $query->result_array();
    }

    public function get_gallery($album_id){
    	$this->db->select('*');
    	$this->db->where('album_id', $album_id);
    	$result = $this->db->get('tbl_gallery')->result_array();
    	return $result;
    }

    public function row($code){
    	$this->db->distinct();
    	$this->db->select('*');
        $this->db->where('isactive','1');
        $this->db->where('code', $code);
        $result = $this->db->get('tbl_album')->row_array();
        return $result;
    }
}
?>