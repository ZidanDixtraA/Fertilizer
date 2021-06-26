<?php

class Model_kategori extends CI_Model{
    
    public function data_organik()
    {
        return $this->db->get_where('pupuk', array('jenis' => 'organik'));
    }

    public function data_nonorganik()
    {
        return $this->db->get_where('pupuk', array('jenis' => 'non organik'));
    }

}