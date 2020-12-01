<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      <?= $title; ?>
      <small>Version 2.0</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active"><?= $title; ?></li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">


<div class="box box-success">
          <div class="box-header with-border">
          <div class="box-tools pull-right">
              <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
              </button>
              <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
            </div>
            <h3 class="box-title"><i class="fa fa-fw fa-android"></i>User Agent</h3>
            </div>
          <div class="box-body">
        <table>
        <tr><td>Agent&nbsp;&nbsp;</td><td>:&nbsp;<?= $agent ?></td></tr>
        <tr><td>OS&nbsp;&nbsp;</td><td>:&nbsp;<?= $sistemoperasi ?></td></tr>
        <tr><td>IP Address&nbsp;&nbsp;</td><td>:&nbsp;<?= $alamatip ?></td></tr>
        </table>
      </div>
  </div>
 </section>
  <!-- /.content -->
</div>