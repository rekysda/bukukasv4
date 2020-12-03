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
    $data['kategori'] = $this->master_model->get_kategori();
    
    $this->form_validation->set_rules('jenis_id', 'jenis_id', 'required');
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
          'jenis_id' => $this->input->post('jenis_id'),
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
    $data['getkategori'] = $this->master_model->get_kategori_byId($id);

    $this->form_validation->set_rules('jenis_id', 'jenis_id', 'required');
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
        'jenis_id' => $this->input->post('jenis_id'),
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

//rekening
public function rekening()
{
  $data['title'] = 'Rekening';
  $data['user'] = $this->db->get_where('user', ['email' =>
  $this->session->userdata('email')])->row_array();
  $this->load->model('master_model', 'master_model');
  $data['kategori'] =  $this->db->get('kas_kategori')->result_array();
  $data['rekening'] = $this->master_model->get_rekening();
  
  $this->form_validation->set_rules('kategori_id', 'kategori_id', 'required');
  $this->form_validation->set_rules('kode', 'kode', 'required|is_unique[kas_rekening.kode]');
  $this->form_validation->set_rules('nama', 'nama', 'required');

  if ($this->form_validation->run() == false) {
  $this->load->view('themes/backend/header', $data);
  $this->load->view('themes/backend/sidebar', $data);
  $this->load->view('themes/backend/topbar', $data);
  $this->load->view('rekening', $data);
  $this->load->view('themes/backend/footer');
  $this->load->view('themes/backend/footerajax');
  }else{

      $data = [
        'kategori_id' => $this->input->post('kategori_id'),
        'kode' => $this->input->post('kode'),
        'nama' => $this->input->post('nama')
         ];
         $this->db->insert('kas_rekening', $data);
//log act
//$data['user'] = $this->db->get_where('user_role', ['id' => $id])->row_array();
$user=$this->session->userdata('email');
$item=$this->input->post('nama');
activity_log($user,'Tambah rekening',$item);
//end log   
         $this->session->set_flashdata('message', '<div class="alert alert-success" role"alert">Data Saved !</div>');
         redirect('master/rekening');
  }
}
public function editrekening($id)
{
  $data['title'] = 'Rekening';
  $data['user'] = $this->db->get_where('user', ['email' =>
  $this->session->userdata('email')])->row_array();
  
  $this->load->model('master_model', 'master_model');
  $data['kategori'] =  $this->db->get('kas_kategori')->result_array();
  $data['getrekening'] = $this->master_model->get_rekening_byId($id);

  $this->form_validation->set_rules('kategori_id', 'kategori_id', 'required');
  $this->form_validation->set_rules('kode', 'kode', 'required');
  $this->form_validation->set_rules('nama', 'nama', 'required');
  if ($this->form_validation->run() == false) {
  $this->load->view('themes/backend/header', $data);
  $this->load->view('themes/backend/sidebar', $data);
  $this->load->view('themes/backend/topbar', $data);
  $this->load->view('editrekening', $data);
  $this->load->view('themes/backend/footer');
  $this->load->view('themes/backend/footerajax');
  }else{
    $data = [
      'kategori_id' => $this->input->post('kategori_id'),
      'kode' => $this->input->post('kode'),
      'nama' => $this->input->post('nama')
       ];
        $this->db->where('id', $id);
        $this->db->update('kas_rekening', $data);
//log act
//$data['user'] = $this->db->get_where('user_role', ['id' => $id])->row_array();
$user=$this->session->userdata('email');
$item=$this->input->post('nama');
activity_log($user,'Edit Rekening',$item);
//end log 
        $this->session->set_flashdata('message', '<div class="alert alert-success" role"alert">Data Saved !</div>');
        redirect('master/rekening');
  }
}

public function hapusrekening($id)
{
$user=$this->session->userdata('email');
$item='';
activity_log($user,'Hapus Kategori',$item);
//end log    
  $this->db->where('id', $id);
  $this->db->delete('kas_rekening');
  $this->session->set_flashdata('message', '<div class="alert alert-success" role"alert">Data deleted !</div>');
  redirect('master/rekening');
}
    //end
}