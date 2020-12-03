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
            <form action="" method="post"enctype="multipart/form-data">
            <div class="form-group <?php echo form_error('kategori_id') ? 'has-error' : '' ?>">
                <label for="name">Kategori</label>
                <select name="kategori_id" id="kategori_id" class="form-control">
									<option value="">== Kategori ==</option>
									<?php foreach ($kategori as $dt) : ?>
										<option value="<?= $dt['id']; ?>"><?= $dt['kode']; ?> | <?= $dt['nama']; ?></option>
									<?php endforeach; ?>
								</select>
                <?= form_error('kategori_id', '<span class="help-block">', '</small>'); ?>
              </div>
              
              <div class="form-group <?php echo form_error('kode') ? 'has-error' : '' ?>">
                <label for="name">Kode</label>
                <input class="form-control" type="text" name="kode" value="<?= set_value('kode', isset($kode) ? $kode_ruangan : ''); ?>" />
                <?= form_error('kode', '<span class="help-block">', '</small>'); ?>
              </div>
              <div class="form-group <?php echo form_error('nama') ? 'has-error' : '' ?>">
                <label for="tahun">Nama</label>
                <input class="form-control" type="text" name="nama" value="<?= set_value('nama'); ?>" />
                <?= form_error('nama', '<span class="help-block">', '</small>'); ?>
              </div>
             
              <button type="submit" class="btn btn-primary">Simpan</button>
              <a href="<?= base_url('master/rekening'); ?> " class="btn btn-default">Cancel</a>
            </form>
          </div>
          <div class="col-md-8">
            <div class="table-responsive">
              <table  class="table table-bordered table-striped">
                <thead>
                  <tr>
                    <th>#</th>
                    <th></th>
                    <th>Kode</th>
                    <th>Nama</th>    
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $i = 1; ?>
                  <?php foreach ($kategori as $dt) : ?>
                    <tr>
                      <td><?= $i; ?></td>
                      <td colspan='4'><b><?= $dt['kode']; ?> - <?= $dt['nama']; ?></b></td>
                    </tr>
                  <?php foreach ($rekening as $dt2) : ?>
                  <?php if($dt['id']==$dt2['kategori_id']){?>
                    <tr>
                      <td colspan='2'></td>
                      <td><?= $dt2['kode']; ?></td>
                      <td><?= $dt2['nama']; ?></td>
                      <td>
                        <a href="<?= base_url('master/editrekening/' . $dt2['id']); ?>" class="btn btn-info btn-xs">Edit</a>
                        <a href="<?= base_url('master/hapusrekening/' . $dt2['id']); ?>" class="btn btn-danger btn-xs" onclick="return confirm('Anda yakin ? data tidak dapat dikembalikan lagi...');">Delete</a>
                      </td>
                    </tr>
                  <?php } ?>
                  <?php endforeach; ?>
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