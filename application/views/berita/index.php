<!-- Begin Page Content -->
<div class="container">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <div class="row">
        <div class="col-md-5">
            <form action="" method="POST" id="myForm">
                <div class="input-group mb-3">
                    <select class="custom-select" id="kategorijava">
                        <option value="">kategori</option>
                        <option value="Politik">Politik</option>
                        <option value="Olahraga">Olahraga</option>
                        <option value="Lainnya">Lainnya</option>
                    </select>
                    <input type="text" class="form-control" placeholder="Search Keyword..." name="keyword" id="keyword" autofocus>
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="submit">search
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col">
            <h5>Hasil: <?= $total_rows; ?></h5>
            <?php foreach ($news as $news_item) : ?>
                <?php $tanggaldatabase = $news_item['created'];
                $tgl = date("d F", strtotime($tanggaldatabase)); ?>
                <div class="list-group">
                    <a href="<?= site_url('berita/detail/' . $news_item['slug']); ?>" class="list-group-item list-group-item-action list-group-item-info border-dark">
                        <br>
                        <div class="media">
                            <div class="col-sm-3">
                                <img src="<?= base_url('assets/img/news/') . $news_item['image']; ?>" class="img-thumbnail">
                            </div>
                            <div class="media-body">
                                <h5 class="mt-5 justify-center text-fluid"><?= $news_item['title'] ?></h5>
                            </div>
                            <div><small><?= $tgl ?></small></div>
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