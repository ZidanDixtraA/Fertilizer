<div class="container-fluid">

<div class="card">
  <h5 class="card-header">Detail Pupuk</h5>
  <div class="card-body">

    <?php foreach ($pupuk as $ppk): ?>
    <div class="row">        
        <div class="col-md-4">
            <img src="<?php echo base_url().'/uploads/'.$ppk->gambar ?>" class="card-img-top">
        </div>
        <div class="col-md-8">
            <table class="table">
                <tr>
                    <td>Jenis Pupuk</td>
                    <td><strong><?php echo $ppk->jenis ?></strong></td>
                </tr>

                <tr>
                    <td>Nama Pupuk</td>
                    <td><strong><?php echo $ppk->nama ?></strong></td>
                </tr>

                <tr>
                    <td>Keterangan</td>
                    <td><strong><?php echo $ppk->keterangan ?></strong></td>
                </tr>

                <tr>
                    <td>Manfaat</td>
                    <td><strong><?php echo $ppk->manfaat ?></strong></td>
                </tr>

            </table>

            <?php echo anchor('dashboard/index/', '<div class="btn btn-sm btn-primary">Kembali</div>') ?>

        </div>
    </div>
    <?php endforeach; ?>
  </div>
</div>

</div>