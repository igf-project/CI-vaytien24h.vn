<?php
class Field_model extends CI_Model {
	
	public function __construct(){
        parent::__construct();
    }

    public function get_list(){
        $this->db->select('*');
        $this->db->where('isactive','1');
        $this->db->order_by('order','ASC');
        $query = $this->db->get('tbl_field');
        return $query->result_array();
    }

    public function get_list_group(){
        $this->db->select('*');
        $this->db->where('isactive','1');
        $this->db->order_by('order','ASC');
        $query = $this->db->get('tbl_borrow_group');
        return $query->result_array();
    }
}
?>