<?php

class Model_pupuk extends CI_Model{

    public function tampil_data()
    {
        return $this->db->get('pupuk');
    }

    public function tambah_pupuk($data, $table)
    {
        $this->db->insert($table,$data);
    }

    public function edit_pupuk($where, $table)
    {
        return $this->db->get_where($table, $where);
    }

    public function update_data($where, $data, $table)
    {
        $this->db->where($where);
        $this->db->update($table, $data);
    }

    public function hapus_data($where,$table)
    {
        $this->db->where($where);
        $this->db->delete($table);
    }

    public function detail_ppk($no)
    {
        $result = $this->db->where('no', $no)->get('pupuk');
        if ($result->num_rows() > 0){
            return $result->result();
        }else{
            return false;
        }
    }
}