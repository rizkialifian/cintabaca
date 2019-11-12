<?php
    require "php/koneksi.php";

    $id =  $_GET['id'];

    $sql = "SELECT * FROM buku WHERE `id_buku` = '".$id."'";

    $run = mysqli_query($koneksi,$sql);
    
    $row = mysqli_fetch_assoc($run);
    //echo json_encode(mysqli_fetch_assoc($run));
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Dasbor | Cinta Baca</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/light-bootstrap-dashboard.css?v=2.0.0 " rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="assets/css/demo.css" rel="stylesheet" />
</head>

<body>
    <div class="wrapper">
        <?php require "sidebar.php"; ?>


        <div class="main-panel">   
            <?php require "navbar.php"; ?>
            <div class="content">
                <div class="container-fluid">
                    <div class="section">
                    <form action="update-buku.php" method="POST">
                        <input type="text" name="id" value="<?= $row['id_buku'] ?>" hidden>
                        <div class="form-group row">
                            <label for="inputUsername" class="col-sm-2 col-form-label">Judul Buku</label>
                            <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputUsername" placeholder="Judul" value="<?= $row['nama_buku'] ?>" name="nama_buku">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="inputUsername" class="col-sm-2 col-form-label">Nama Penulis</label>
                            <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputUsername" placeholder="Penulis" value="<?= $row['nama_penulis'] ?>" name="nama_penulis">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="inputEmail3" class="col-sm-2 col-form-label">Genre</label>
                            <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputEmail3" placeholder="Genre" value="<?= $row['genre'] ?>" name="genre">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="inputUsername" class="col-sm-2 col-form-label">Tahun</label>
                            <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputUsername" placeholder="Tahun" value="<?= $row['tahun'] ?>" name="tahun">
                            </div>
                        </div>
                       <div class="form-group row">
                            <label for="inputUsername" class="col-sm-2 col-form-label">Jumlah</label>
                            <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputUsername" placeholder="Jumlah" value="<?= $row['jumlah'] ?>" name="jumlah">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="inputUsername" class="col-sm-2 col-form-label">Kode Rak</label>
                            <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputUsername" placeholder="Kode Rak" value="<?= $row['kode_rak'] ?>" name="kode_rak">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-12">
                            <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </div>
                    </form>
                    </div>
                </div>
            </div>
            <?php require "footer.php"; ?>
        </div>
    </div>
    <!--   -->
    <!-- <div class="fixed-plugin">
    <div class="dropdown show-dropdown">
        <a href="#" data-toggle="dropdown">
            <i class="fa fa-cog fa-2x"> </i>
        </a>

        <ul class="dropdown-menu">
			<li class="header-title"> Sidebar Style</li>
            <li class="adjustments-line">
                <a href="javascript:void(0)" class="switch-trigger">
                    <p>Background Image</p>
                    <label class="switch">
                        <input type="checkbox" data-toggle="switch" checked="" data-on-color="primary" data-off-color="primary"><span class="toggle"></span>
                    </label>
                    <div class="clearfix"></div>
                </a>
            </li>
            <li class="adjustments-line">
                <a href="javascript:void(0)" class="switch-trigger background-color">
                    <p>Filters</p>
                    <div class="pull-right">
                        <span class="badge filter badge-black" data-color="black"></span>
                        <span class="badge filter badge-azure" data-color="azure"></span>
                        <span class="badge filter badge-green" data-color="green"></span>
                        <span class="badge filter badge-orange" data-color="orange"></span>
                        <span class="badge filter badge-red" data-color="red"></span>
                        <span class="badge filter badge-purple active" data-color="purple"></span>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </li>
            <li class="header-title">Sidebar Images</li>

            <li class="active">
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img src="assets/img/sidebar-1.jpg" alt="" />
                </a>
            </li>
            <li>
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img src="assets/img/sidebar-3.jpg" alt="" />
                </a>
            </li>
            <li>
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img src="/assets/img/sidebar-4.jpg" alt="" />
                </a>
            </li>
            <li>
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img src="assets/img/sidebar-5.jpg" alt="" />
                </a>
            </li>

            <li class="button-container">
                <div class="">
                    <a href="http://www.creative-tim.com/product/light-bootstrap-dashboard" target="_blank" class="btn btn-info btn-block btn-fill">Download, it's free!</a>
                </div>
            </li>

            <li class="header-title pro-title text-center">Want more components?</li>

            <li class="button-container">
                <div class="">
                    <a href="http://www.creative-tim.com/product/light-bootstrap-dashboard-pro" target="_blank" class="btn btn-warning btn-block btn-fill">Get The PRO Version!</a>
                </div>
            </li>

            <li class="header-title" id="sharrreTitle">Thank you for sharing!</li>

            <li class="button-container">
				<button id="twitter" class="btn btn-social btn-outline btn-twitter btn-round sharrre"><i class="fa fa-twitter"></i> · 256</button>
                <button id="facebook" class="btn btn-social btn-outline btn-facebook btn-round sharrre"><i class="fa fa-facebook-square"></i> · 426</button>
            </li>
        </ul>
    </div>
</div>
 -->
</body>
<!--   Core JS Files   -->
<script src="assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="assets/js/plugins/bootstrap-switch.js"></script>
<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!--  Chartist Plugin  -->
<script src="assets/js/plugins/chartist.min.js"></script>
<!--  Notifications Plugin    -->
<script src="assets/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
<script src="assets/js/light-bootstrap-dashboard.js?v=2.0.0 " type="text/javascript"></script>
<!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
<script src="assets/js/demo.js"></script>

</html>
