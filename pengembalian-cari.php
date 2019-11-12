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
        $sql = "SELECT peminjaman.*, anggota.nama, buku.nama_buku
            FROM peminjaman
            INNER JOIN anggota
            ON peminjaman.id_anggota = anggota.id_anggota
            INNER JOIN buku
            ON peminjaman.id_buku = buku.id_buku
            WHERE peminjaman.id_anggota = ".$id_anggota."";

        $run = mysqli_query($koneksi,$sql);   
    }else{
        header('location: pengembalian-buku.php?search=failed');
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
                    <form action="kembali.php" method="POST">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group text-center">
                                        <label for="inputEmail4">Anggota</label>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail4">Id Anggota</label>
                                        <input type="text" class="form-control form-disabled" id="inputEmail4" placeholder="Id Anggota" name="id_anggota" value="<?= $anggota['id_anggota']; ?>" disabled>
                                        <input type="text" class="form-control form-disabled" id="inputEmail4" placeholder="Id Anggota" name="id_anggota" value="<?= $anggota['id_anggota']; ?>" hidden>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail4">Nama</label>
                                        <input type="text" class="form-control disabled" id="inputEmail4" placeholder="Nama" name="nama" value="<?= $anggota['nama']; ?>" disabled>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail4">Jenis Kelamin</label>
                                        <input type="text" class="form-control disabled" id="inputEmail4" placeholder="Jenis Kelamin" name="jenis_kelamin" value="<?= $anggota['jenis_kelamin']; ?>" disabled>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail4">Alamat</label>
                                        <input type="text" class="form-control disabled" id="inputEmail4" placeholder="Alamat" name="alamat" value="<?= $anggota['alamat']; ?>" disabled>
                                    </div>
                                </div>
                                    
                            </div>
                            <table id="example" class="table table-striped table-bordered" style="width:100%">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama Peminjam</th>
                                        <th>Buku</th>
                                        <th>Tanggal Minjam</th>
                                        <th>Tanggal Kembali</th>
                                        <th>Option</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <?php $i=1; while($row = mysqli_fetch_assoc($run)) { ?>
                                    <tr>
                                        <td><?= $i; ?></td>                                
                                        <td><?= $row['nama']; ?></td>
                                        <td><?= $row['nama_buku']; ?></td>
                                        <td><?= $row['tanggal_masuk']; ?></td>
                                        <td><?= $row['tanggal_kembali']; ?></td>
                                        <td><a href="" class="btn btn-primary">Kembali</a></td>
                                    </tr>
                                <?php $i++; } ?>
                                </tbody>
                            </table>
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