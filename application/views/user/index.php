<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

    <div class="row">
        <div class="col-lg-6">
            <?= $this->session->flashdata('message'); ?>
        </div>
    </div>

    <div class="card mb-3" style="max-width: 1040px;">
        <div class="row">
            <div class="col-md-4">
                <img src="<?= base_url('assets/img/profile/') . $user['image']; ?>" class="img-fluid rounded-start">
            </div>
            <div class="col-md-8">
                <div class="card-body">
                    <h3 class="card-title"><?= $user['name']; ?></h3>
                    <p class="card-text"><?= $user['email']; ?></p>
                    <p class="card-text"><small class="text-body-secondary">Akun Dibuat Pada <?= date('d F Y', $user['date_created']); ?></small></p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /.container-fluid -->


</div>
<!-- End of Main Content -->