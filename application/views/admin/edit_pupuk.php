<div class="container-fluid">
    
    <h3><i class="fas fa-edit"></i> EDIT DATA PUPUK</h3>

    <?php foreach ($pupuk as $ppk) : ?>

        <form method="post" action="<?php echo base_url().'admin/data_pupuk/update' ?>">

            <div class="form-group">
                <label>Jenis Pupuk</label>
                <input type="hidden" name="no" class="form-control" value="<?php echo $ppk->no ?>">
                <input type="text" name="jenis" class="form-control" value="<?php echo $ppk->jenis ?>">
            </div>

            <div class="form-group">
                <label>Nama Pupuk</label>
                <input type="text" name="nama" class="form-control" value="<?php echo $ppk->nama ?>">
            </div>

            <div class="form-group">
                <label>Keterangan</label>
                <input type="text" name="keterangan" class="form-control" value="<?php echo $ppk->keterangan ?>">
            </div>

            <div class="form-group">
                <label>Manfaat</label>
                <input type="text" name="manfaat" class="form-control" value="<?php echo $ppk->manfaat ?>">
            </div>

            <button type="submit" class="btn btn-primary btn-sm">Simpan</button>

        </form>

    <?php endforeach; ?>

</div>