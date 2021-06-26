<?php

class Data_pupuk extends CI_Controller{

    public function index()
    {
        $data['pupuk'] = $this->model_pupuk->tampil_data()->result();

        $this->load->view('templates_admin/header');
        $this->load->view('templates_admin/sidebar');
        $this->load->view('admin/data_pupuk', $data);
        $this->load->view('templates_admin/footer');
    }

    public function tambah_aksi()
    {
        $jenis      = $this->input->post('jenis');
        $nama       = $this->input->post('nama');
        $keterangan = $this->input->post('keterangan');
        $manfaat    = $this->input->post('manfaat');
        $gambar     = $_FILES['gambar']['name'];
        if ($gambar = ''){

        }else{
            $config['upload_path'] = './uploads';
            $config['allowed_types'] = 'jpg|jpeg|png|gif';
        
            $this->load->library('upload', $config);                             
            if(!$this->upload->do_upload('gambar'))
            {
                echo "Gambar gagal diupload!";
            }else{
                $gambar = $this->upload->data('file_name');
            }
        }

        $data = array(
            'jenis'     => $jenis,
            'nama'      => $nama,
            'keterangan'=> $keterangan,
            'manfaat'   => $manfaat,
            'gambar'    => $gambar,
        );

        $this->model_pupuk->tambah_pupuk($data, 'pupuk');                                         
        redirect('admin/data_pupuk/index');
    }

    public function edit($no)
    {
        $where = array('no' => $no);                                                           
        $data['pupuk'] = $this->model_pupuk->edit_pupuk($where, 'pupuk')->result();

        $this->load->view('templates_admin/header');
        $this->load->view('templates_admin/sidebar');
        $this->load->view('admin/edit_pupuk', $data);
        $this->load->view('templates_admin/footer');
    }

    public function update()
    {
        $no         = $this->input->post('no');
        $jenis      = $this->input->post('jenis');
        $nama       = $this->input->post('nama');
        $keterangan = $this->input->post('keterangan');
        $manfaat    = $this->input->post('manfaat');
        
        $data = array(
            'jenis'      => $jenis,
            'nama'       => $nama,
            'keterangan' => $keterangan,
            'manfaat'    => $manfaat
        );
    
        $where = array(
            'no' => $no
        );
    
        $this->model_pupuk->update_data($where,$data, 'pupuk');
        redirect('admin/data_pupuk/index');

    }

    public function hapus($no)
    {
        $where = array('no' => $no);
        $this->model_pupuk->hapus_data($where, 'pupuk');
        redirect('admin/data_pupuk/index');
    }


    
}

