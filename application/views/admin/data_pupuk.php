<div class="container-fluid">
    <button class="btn btn-sm btn-primary mb-4" data-toggle="modal" data-target="#tambah_pupuk" ><i class="fas fa-plus fa-sm"></i>Tambah Data Pupuk</button>

    <table class="table table-bordered">
        <tr>
            <th>NO</th>
            <th>JENIS PUPUK</th>
            <th>NAMA PUPUK</th>
            <th>KETERANGAN</th>
            <th>MANFAAT</th>
            <th colspan="2">AKSI</th>
        </tr>

        <?php 
        $bil=1;
        foreach ($pupuk as $ppk) : ?>

        <tr>
            <td><?php echo $bil++ ?></td>
            <td><?php echo $ppk->jenis ?></td>
            <td><?php echo $ppk->nama ?></td>
            <td><?php echo $ppk->keterangan ?></td>
            <td><?php echo $ppk->manfaat ?></td>
            <td><?php echo anchor('admin/data_pupuk/edit/'.$ppk->no, '<div class="btn btn-primary btn-sm"><i class="fas fa-fw fa-edit"></i></div>') ?></td>
            <td><?php echo anchor('admin/data_pupuk/hapus/'.$ppk->no, '<div class="btn btn-danger btn-sm"><i class="fas fa-fw fa-trash"></i></div>') ?> </td>
        </tr>

        <?php endforeach; ?>

    </table>

</div>

<!-- Modal -->
<div class="modal fade" id="tambah_pupuk" tabindex="-1" aria-labelledby="exampleModalLabel" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Tambah Data Pupuk</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="<?php echo base_url().'admin/data_pupuk/tambah_aksi' ?>" method="post" enctype="multipart/form-data">
            
            <div class="form-group">
                <label>Jenis Pupuk</label>
                <select class="form-control" name="kategori">
                  <option>Organik</option>
                  <option>Non-Organik</option>
                </select>
            </div>

            <div class="form-group">
                <label>Nama Pupuk</label>
                <input type="text" name="nama" class="form-control">
            </div>

            <div class="form-group">
                <label>Keterangan</label>
                <input type="text" name="keterangan" class="form-control">
            </div>
            
            <div class="form-group">
                <label>Manfaat</label>
                <input type="text" name="manfaat" class="form-control">
            </div>

            <div>
                <label>Gambar Pupuk</label><br>
                <input type="file" name="gambar">
            </div>
      </div>
      <div class="modal-footer">
        <button type="reset" class="btn btn-danger" data-dismiss="modal">Batalkan</button>
        <button type="submit" class="btn btn-primary">Simpan</button>
      </div>
        
      </form>

    </div>
  </div>
</div>