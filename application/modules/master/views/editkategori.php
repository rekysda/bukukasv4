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
        <?php $getjenis= $getkategori['jenis'];?>
        <?= $getjenis; ?>
        <form action="" method="post"enctype="multipart/form-data">
            <div class="form-group <?php echo form_error('jenis') ? 'has-error' : '' ?>">
                <label for="name">Jenis</label>
                <select name="jenis" id="jenis" class="form-control">
<option value="">== Jenis ==</option>
<?php foreach ($jenis as $dt) : ?>
<option value="<?= $dt['nama']; ?>" <?= $dt['nama'] == $getjenis ? ' selected="selected"' : ''; ?>><?= $dt['nama']; ?></option>
									<?php endforeach; ?>
								</select>
                <?= form_error('jenis', '<span class="help-block">', '</small>'); ?>
              </div>
             
              <div class="form-group <?php echo form_error('kode') ? 'has-error' : '' ?>">
                <label for="name">Kode</label>
                <input class="form-control" type="text" name="kode" value="<?= $getkategori['kode']; ?>" />
                <?= form_error('kode', '<span class="help-block">', '</small>'); ?>
              </div>
              <div class="form-group <?php echo form_error('nama_ruangan') ? 'has-error' : '' ?>">
                <label for="tahun">Nama</label>
                <input class="form-control" type="text" name="nama" value="<?= $getkategori['nama']; ?>" />
                <?= form_error('nama', '<span class="help-block">', '</small>'); ?>
              </div> 
              
              <button type="submit" class="btn btn-primary">Simpan</button>
              <a href="<?= base_url('master/kategori'); ?> " class="btn btn-default">Cancel</a>
            </form>
      </div>
      <!-- /.box-body -->
    </div>
    <!-- /.box -->

  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->