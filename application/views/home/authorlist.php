<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="<?= base_url('assets/img/favicon.png')?>">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Nissa Bookstore | Halaman Daftar Penulis
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <!-- CSS Files -->
  <link rel="stylesheet" href="<?php echo base_url("assets/css/bootstrap.min.css")?>">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url("assets/datables/dataTables.bootstrap4.min.css")?>">
  <link href="<?= base_url('assets/css/now-ui-dashboard.css?v=1.5.0')?>" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="<?= base_url('assets/demo/demo.css')?>" rel="stylesheet" />
  <style>
      .wrapper{
          background: url('<?= base_url('assets/img/bg.png') ?>');
    }
  </style>
</head>

<body>
  <div class="wrapper ">
    <div class="sidebar" data-color="blue">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo">
        <a href="<?= base_url('home/index'); ?>" class="simple-text logo-mini">
          NB
        </a>
        <a href="<?= base_url('home/index'); ?>" class="simple-text logo-normal">
          Nissa Bookstore
        </a>
      </div>
      <div class="sidebar-wrapper" id="sidebar-wrapper">
        <ul class="nav">
          <li>
            <a href="<?= base_url('home/book');?>">
              <i class="now-ui-icons files_single-copy-04"></i>
              <p>Daftar Buku</p>
            </a>
          </li>
          <li class="active">
            <a href="<?= base_url('home/author');?>">
              <i class="now-ui-icons users_single-02"></i>
              <p>Daftar Penulis</p>
            </a>
          </li>
          <li>
            <a href="<?= base_url('home/publisher');?>">
              <i class="now-ui-icons business_briefcase-24"></i>
              <p>Daftar Penerbit</p>
            </a>
          </li>
        </ul>
      </div>
    </div>
    <div class="main-panel" id="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand">Halaman Daftar Penulis</a>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="panel-header panel-header-sm">
      </div>
      <div class="content" style="background-image: url('<?= base_url('assets/img/bg.png');?>');">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h4 class="card-title"> Penulis</h4>
                <small class="text-small" style="margin-top: -100px;">silahkan ketikkan <i>penulis</i> yang kamu cari pada <b>kolom</b> yang tersedia</small>
              </div>
              <div class="card-body">
              <div class="table-responsive">
            <table class="table" id="table_id">
                <thead class="table-secondary">
                <tr align="center">
                    <th class="text-danger">No. Identifikasi</th>
                    <th class="text-danger">Nama Penulis</th>
                    <th class="text-danger">Tahun Aktif</th>
                    <th class="text-danger">Negara</th>
                </tr>
                </thead>
                <tbody> 
                <?php
                $i=1;
                foreach($authordetail as $row) { ?>
                <tr align="center">
                    <td><?php echo $row['author_id']; ?></td>
                    <td><?php echo $row['author_name']; ?></td>
                    <td><?php echo $row['years_active']; ?></td>
                    <td><?php echo $row['country']; ?></td>
                </tr>
                <?php $i++; }?>
                </tbody>
            </table>
            </div>
              </div>
            </div>
          </div>
      <footer class="container footer fixed-bottom" style="margin-right: -10px;">
        <div class=" container-fluid">
          <div class="copyright" id="copyright">
            &copy; <script>
              document.getElementById('copyright').appendChild(document.createTextNode(new Date().getFullYear()))
            </script>, Designed by <a href="https://www.invisionapp.com" target="_blank">Invision</a>. Recoded by <a href="https://www.instagram.com/hyunsoo.o" target="_blank">Adam Firdaus</a>.
          </div>
        </div>
      </footer>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script type="text/javascript" src="<?php echo base_url("assets/datables/jquery.js")?>"></script>
        <script type="text/javascript" src="<?php echo base_url("assets/js/bootstrap.min.js")?>"></script>
        <script type="text/javascript" src="<?php echo base_url("assets/datables/jquery.dataTables.min.js")?>"></script>
        <script type="text/javascript" src="<?php echo base_url("assets/datables/dataTables.bootstrap4.min.js")?>"></script>
        <script type="text/javascript">
            $(document).ready( function () {
                $('.dataTables_filter').addClass('');
                $('#table_id').DataTable({
                    "pageLength": 6,
                    "lengthMenu" : [5,10]
                });
            } );
        </script>
  <script src="https://cdn.datatables.net/buttons/1.6.2/js/dataTables.buttons.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
  <script src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.html5.min.js"></script>
  <script src="<?= base_url('assets/js/core/popper.min.js');?>"></script>
  <script src="<?= base_url('assets/js/plugins/perfect-scrollbar.jquery.min.js');?>"></script>
  <!-- Chart JS -->
  <script src="<?= base_url('assets/js/plugins/chartjs.min.js'); ?>"></script>
  <!--  Notifications Plugin    -->
  <script src="<?= base_url('assets/js/plugins/bootstrap-notify.js')?>"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="<?= base_url('assets/js/now-ui-dashboard.min.js?v=1.5.0')?>" type="text/javascript"></script><!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
  <script src="<?= base_url('assets/demo/demo.js');?>"></script>
</body>

</html>