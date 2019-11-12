<?php
    if(@$_GET['search']=='failed') echo "<script type='text/javascript'>alert('Masukkan data dengan benar!');</script>";
    
    require "php/koneksi.php";
    $id_anggota = $_POST['id_anggota'];
    $id_buku = $_POST['id_buku'];
    $sql_anggota = "SELECT * FROM anggota WHERE id_anggota = '".$id_anggota."'";
    $sql_buku = "SELECT * FROM buku WHERE id_buku = '".$id_buku."'";
    $run_anggota = mysqli_query($koneksi,$sql_anggota);
    $run_buku = mysqli_query($koneksi,$sql_buku);
    $anggota = mysqli_fetch_assoc($run_anggota);
    $buku = mysqli_fetch_assoc($run_buku);
    if($anggota && $buku){
        
    }else{
        header('location: peminjaman-buku.php?search=failed');
    }
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
                    <form action="minjam.php" method="POST">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group text-center">
                                        <label for="inputEmail4">Anggota</label>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail4">Id Anggota</label>
                                        <input type="text" class="form-control form-disabled" id="inputEmail4" placeholder="Id Anggota" name="id_anggota" value="<?= $anggota['id_anggota']; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail4">Nama</label>
                                        <input type="text" class="form-control disabled" id="inputEmail4" placeholder="Nama" name="nama" value="<?= $anggota['nama']; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail4">Jenis Kelamin</label>
                                        <input type="text" class="form-control disabled" id="inputEmail4" placeholder="Jenis Kelamin" name="jenis_kelamin" value="<?= $anggota['jenis_kelamin']; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail4">Alamat</label>
                                        <input type="text" class="form-control disabled" id="inputEmail4" placeholder="Alamat" name="alamat" value="<?= $anggota['alamat']; ?>">
                                    </div>
                                </div>
                                    
                                <div class="col-md-6">
                                    <div class="form-group text-center">
                                        <label for="inputEmail4">Buku</label>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail4">Id Buku</label>
                                        <input type="text" class="form-control disabled" id="inputEmail4" placeholder="Id Buku" name="id_buku" value="<?= $buku['id_buku']; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail4">Nama Buku</label>
                                        <input type="text" class="form-control disabled" id="inputEmail4" placeholder="Nama Buku" name="nama_buku" value="<?= $buku['nama_buku']; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail4">Nama Penulis</label>
                                        <input type="text" class="form-control disabled" id="inputEmail4" placeholder="Nama Penulis" name="nama_penulis" value="<?= $buku['nama_penulis']; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail4">Jumlah</label>
                                        <input type="text" class="form-control disabled" id="inputEmail4" placeholder="Jumlah" name="jumlah" value="<?= $buku['jumlah']; ?>">
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-12">
                                    <button type="submit" class="btn btn-primary">Pinjam</button> 
                                </div>
                            </div>
                        </div>
                        
                    </form>
                    </div>
                </div>
            </div>
            <?php require "footer.php"; ?>
        </div>
    </div>
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