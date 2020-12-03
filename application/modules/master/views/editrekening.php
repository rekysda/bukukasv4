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

    <!-- Default box -->
    <div class="box">
      <div class="box-header with-border">
        <h3 class="box-title"><?= $title; ?></h3>
      </div>
      <div class="box-body">

        <?= $this->session->flashdata('message') ?>
        <?php $getkategori= $getrekening['kategori_id'];?>
        <form action="" method="post"enctype="multipart/form-data">
            <div class="form-group <?php echo form_error('kategori_id') ? 'has-error' : '' ?>">
                <label for="name">Kategori</label>
                <select name="kategori_id" id="kategori_id" class="form-control">
<option value="">== Kategori ==</option>
<?php foreach ($kategori as $dt) : ?>
<option value="<?= $dt['id']; ?>" <?= $dt['id'] == $getkategori ? ' selected="selected"' : ''; ?>><?= $dt['kode']; ?> | <?= $dt['nama']; ?></option>
									<?php endforeach; ?>
								</select>
                <?= form_error('kategori_id', '<span class="help-block">', '</small>'); ?>
              </div>
             
              <div class="form-group <?php echo form_error('kode') ? 'has-error' : '' ?>">
                <label for="name">Kode</label>
                <input class="form-control" type="text" name="kode" value="<?= $getrekening['kode']; ?>" />
                <?= form_error('kode', '<span class="help-block">', '</small>'); ?>
              </div>
              <div class="form-group <?php echo form_error('nama_ruangan') ? 'has-error' : '' ?>">
                <label for="tahun">Nama</label>
                <input class="form-control" type="text" name="nama" value="<?= $getrekening['nama']; ?>" />
                <?= form_error('nama', '<span class="help-block">', '</small>'); ?>
              </div> 
              
              <button type="submit" class="btn btn-primary">Simpan</button>
              <a href="<?= base_url('master/rekening'); ?> " class="btn btn-default">Cancel</a>
            </form>
      </div>
      <!-- /.box-body -->
    </div>
    <!-- /.box -->

  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->