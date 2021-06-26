<?php

class Kategori extends CI_Controller{

    public function organik()
    {
        $data['organik'] = $this->model_kategori->data_organik()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('organik', $data);
        $this->load->view('templates/footer');
    }

    public function nonorganik()
    {
        $data['nonorganik'] = $this->model_kategori->data_nonorganik()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('nonorganik', $data);
        $this->load->view('templates/footer');
    }
}