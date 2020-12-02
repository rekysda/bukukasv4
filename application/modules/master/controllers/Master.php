<?php
error_reporting(0);
defined('BASEPATH') or exit('No direct script access allowed');

class Master extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();
    is_logged_in();
  }

  //kategori
  public function kategori()
  {
    $data['title'] = 'Kategori';
    $data['user'] = $this->db->get_where('user', ['email' =>
    $this->session->userdata('email')])->row_array();
    $this->load->model('master_model', 'master_model');
    $data['jenis'] =  $this->db->get('kas_jenis')->result_array();
    $data['kategori'] =  $this->db->get('kas_kategori')->result_array();
    
    $this->form_validation->set_rules('jenis', 'jenis', 'required');
    $this->form_validation->set_rules('kode', 'kode', 'required|is_unique[kas_kategori.kode]');
    $this->form_validation->set_rules('nama', 'nama', 'required');
 
    if ($this->form_validation->run() == false) {
    $this->load->view('themes/backend/header', $data);
    $this->load->view('themes/backend/sidebar', $data);
    $this->load->view('themes/backend/topbar', $data);
    $this->load->view('kategori', $data);
    $this->load->view('themes/backend/footer');
    $this->load->view('themes/backend/footerajax');
    }else{

        $data = [
          'jenis' => $this->input->post('jenis'),
          'kode' => $this->input->post('kode'),
          'nama' => $this->input->post('nama')
           ];
           $this->db->insert('kas_kategori', $data);
//log act
//$data['user'] = $this->db->get_where('user_role', ['id' => $id])->row_array();
$user=$this->session->userdata('email');
$item=$this->input->post('nama');
activity_log($user,'Tambah kategori',$item);
//end log   
           $this->session->set_flashdata('message', '<div class="alert alert-success" role"alert">Data Saved !</div>');
           redirect('master/kategori');
    }
  }
  public function editkategori($id)
  {
    $data['title'] = 'Kategori';
    $data['user'] = $this->db->get_where('user', ['email' =>
    $this->session->userdata('email')])->row_array();
    
    $this->load->model('master_model', 'master_model');
    $data['jenis'] =  $this->db->get('kas_jenis')->result_array();
    $data['kategori'] =  $this->db->get('kas_kategori')->result_array();
    $data['getkategori'] = $this->master_model->get_kategori_byId($id);

    $this->form_validation->set_rules('jenis', 'jenis', 'required');
    $this->form_validation->set_rules('kode', 'kode', 'required');
    $this->form_validation->set_rules('nama', 'nama', 'required');
    if ($this->form_validation->run() == false) {
    $this->load->view('themes/backend/header', $data);
    $this->load->view('themes/backend/sidebar', $data);
    $this->load->view('themes/backend/topbar', $data);
    $this->load->view('editkategori', $data);
    $this->load->view('themes/backend/footer');
    $this->load->view('themes/backend/footerajax');
    }else{
      $data = [
        'jenis' => $this->input->post('jenis'),
        'kode' => $this->input->post('kode'),
        'nama' => $this->input->post('nama')
         ];
          $this->db->where('id', $id);
          $this->db->update('kas_kategori', $data);
//log act
//$data['user'] = $this->db->get_where('user_role', ['id' => $id])->row_array();
$user=$this->session->userdata('email');
$item=$this->input->post('nama');
activity_log($user,'Edit Kategori',$item);
//end log 
          $this->session->set_flashdata('message', '<div class="alert alert-success" role"alert">Data Saved !</div>');
          redirect('master/kategori');
    }
  }

  public function hapuskategori($id)
  {
$user=$this->session->userdata('email');
$item='';
activity_log($user,'Hapus Kategori',$item);
//end log    
    $this->db->where('id', $id);
    $this->db->delete('kas_kategori');
    $this->session->set_flashdata('message', '<div class="alert alert-success" role"alert">Data deleted !</div>');
    redirect('master/kategori');
  }

    //end
}