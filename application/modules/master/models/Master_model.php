<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Master_model extends CI_Model
{ 
  public function get_kategori()
  {

    $this->db->select('`kas_kategori`.*');
    $this->db->from('kas_kategori');
    $this->db->order_by('kas_kategori.kode', 'asc');
    $this->db->order_by('kas_kategori.nama', 'asc');
    return $this->db->get()->result_array();
  }
  
  public function get_kategori_byId($id)
  {

    $this->db->select('`kas_kategori`.*');
    $this->db->from('kas_kategori');
    $this->db->where('id',$id);
    return $this->db->get()->row_array();
  }
  //end
}