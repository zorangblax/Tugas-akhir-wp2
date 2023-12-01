<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

    <div class="row">
        <div class="col-lg-10">
            <a class="btn btn-primary mb-4" href="<?= base_url('admin/tambah') ?>" role="button">Tambah Berita</a>
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">List Berita</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>nomor</th>
                                    <th>Judul</th>
                                    <th>created</th>
                                    <th>Setting</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $no = 1;
                                foreach ($news as $news_item) : ?>

                                    <tr>
                                        <td><?= $no++ ?></td>
                                        <td><?= $news_item['title'] ?></td>
                                        <td><?= $news_item['created'] ?></td>
                                        <td>
                                            <a href="<?= base_url('admin/edit_data/'); ?><?= $news_item['id']; ?>" class="badge badge-primary">Edit</a>
                                            <a href="<?= base_url('admin/hapus_data/'); ?><?= $news_item['id']; ?>" class="badge badge-danger">Hapus</a>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>


</div>
<!-- /.container-fluid -->


</div>
<!-- End of Main Content -->