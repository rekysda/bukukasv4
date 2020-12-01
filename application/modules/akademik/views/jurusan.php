<script type='text/javascript'>
  $(function($) {
    $('#nominal').autoNumeric('init', {
      lZero: 'deny',
      aSep: ',',
      mDec: 0
    });
  });
</script>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      <?= $title; ?>
      <small>to manage <?= $title; ?></small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li>Akademik</li>
      <li><?= $title; ?></li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">

    <?= $this->session->flashdata('message') ?>

    <!-- Default box -->
    <div class="box">
      <div class="box-header with-border">
        <h3 class="box-title"><?= $title; ?></h3>
      </div>
      <div class="box-body">

        <div class="row">
          <div class="col-md-4">
            <form action="" method="post" enctype="multipart/form-data">
              <div class="form-group <?= form_error('nama_jurusan') ? 'has-error' : '' ?>">
                <label for="name">Nama Jurusan</label>
                <input class="form-control" type="text" name="nama_jurusan" value="<?= set_value('nama_jurusan'); ?>" />
                <?= form_error('nama_jurusan', '<span class="help-block">', '</small>'); ?>
              </div>
              <input class="form-control" type="hidden" name="user_id" value="<?= $user['id']; ?>">
              <button type="submit" class="btn btn-primary">Simpan</button>
              <a href="<?= base_url('akademik/jurusan'); ?> " class="btn btn-default">Cancel</a>
            </form>
          </div>
          <div class="col-md-8">
            <div class="table-responsive">
              <table class="table table-hover"id='example3'>
                <thead>
                  <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>Aksi</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $i = 1; ?>

                  <?php foreach ($getjurusanAll as $dt) : ?>
                  <tr>
                    <td><?= $i ?></td>
                    <td><?= $dt['nama_jurusan'] ?></td>
                    <td>
                      <a href="<?= base_url('akademik/editjurusan/' . $dt['id']); ?>" class="btn btn-info btn-xs">Edit</a>
                      <a href="<?= base_url('akademik/hapusjurusan/' . $dt['id']); ?>" class="btn btn-danger btn-xs" onclick="return confirm('Anda yakin ? data tidak dapat dikembalikan lagi...');">Delete</a>
                    </td>
                  </tr>
                  <?php $i++; ?>
                  <?php endforeach; ?>
                </tbody>
              </table>
            </div>
          </div>
        </div>

      </div>
      <!-- /.box-body -->
    </div>
    <!-- /.box -->

  </section>
  <!-- /.content -->
</div>

<!-- /.content-wrapper -->