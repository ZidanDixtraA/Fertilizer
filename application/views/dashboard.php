<div class="container-fluid">

    <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
        <img src="<?php echo base_url('assets/img/slide1.png') ?>" class="d-block w-100" alt="...">
        </div>
    </div>
    </div>

    <div class="row text-center mt-4" >

        <?php foreach ($pupuk as $ppk) : ?>
            <div class="card ml-4 mb-3" style="width: 18rem;">
                <img src="<?php echo base_url().'/uploads/'.$ppk->gambar ?>" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title mb-1"><?php echo $ppk->nama ?></h5>
                    <small><?php echo $ppk->jenis ?></small><br>
                    <?php echo anchor('dashboard/detail/'.$ppk->no, '<div class="btn btn-sm btn-primary">Detail</div>') ?>
                </div>
            </div>
        <?php endforeach; ?>

    </div>
</div>