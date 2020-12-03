<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Master_model extends CI_Model
{ 
  public function get_kategori()
  {

    $this->db->select('`kas_kategori`.*,kas_jenis.nama as namajenis');
    $this->db->from('kas_kategori');
    $this->db->join('kas_jenis', 'kas_jenis.id = kas_kategori.jenis_id');
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

  public function get_rekening()
  {

    $this->db->select('`kas_rekening`.*');
    $this->db->from('kas_rekening');
    $this->db->order_by('kas_rekening.kode', 'asc');
    $this->db->order_by('kas_rekening.nama', 'asc');
    return $this->db->get()->result_array();
  }
  public function get_rekening_byId($id)
  {

    $this->db->select('`kas_rekening`.*');
    $this->db->from('kas_rekening');
    $this->db->where('id',$id);
    return $this->db->get()->row_array();
  }
  //end
}