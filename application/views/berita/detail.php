<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $news['title']; ?></h1>
    <div class="row">

        <img src="<?= base_url('assets/img/news/') . $news['image']; ?>" class="mx-auto d-block">
        <div class="col-lg-10">
            <p class="info"><?= $news['body']; ?></p>
        </div>

    </div>

</div>
<!-- /.container-fluid -->


</div>
<!-- End of Main Content -->