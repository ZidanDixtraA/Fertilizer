<?php

class Dashboard extends CI_Controller{

    public function index()
    {
        $data['pupuk'] = $this->model_pupuk->tampil_data()->result();

        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('dashboard', $data);
        $this->load->view('templates/footer');
    }
    public function detail($no)
    {
        $data['pupuk'] = $this->model_pupuk->detail_ppk($no);

        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('detail_pupuk', $data);
        $this->load->view('templates/footer');
    }
}