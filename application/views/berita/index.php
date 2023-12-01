<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <div class="row">
        <div class="col-lg-10">
            <?php foreach ($news as $news_item) : ?>
                <div class="list-group">
                    <a href="<?= site_url('berita/detail/' . $news_item['slug']); ?>" class="list-group-item list-group-item-action list-group-item-secondary border-dark">
                        <br>
                        <div class="media">
                            <div class="col-sm-3">
                                <img src="<?= base_url('assets/img/news/') . $news_item['image']; ?>" class="img-fluid">
                            </div>
                            <div class="media-body">
                                <h2 class="mt-0 justify-center"><?= $news_item['title'] ?></h2>
                            </div>
                        </div>
                    </a>
                </div>
                <br>
            <?php endforeach; ?>
        </div>
    </div>
    <?= $this->pagination->create_links(); ?>

</div>
<!-- /.container-fluid -->


</div>
<!-- End of Main Content -->