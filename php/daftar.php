<?php
    require "../php/koneksi.php";

    $username = $_POST['username'];
    $password = $_POST['password'];
    $nama = $_POST['name'];
    $jenis_kelamin = $_POST['gender'];
    $tempat_lahir = $_POST['tempat_lahir'];
    $tanggal_lahir = $_POST['tanggal_lahir'];
    $alamat = $_POST['alamat'];
    $nomortelp = $_POST['phone'];
    $email = $_POST['email'];
    $tanggal_daftar = date("Y-m-d");

    //echo $username.$password.$nama.$jenis_kelamin.$tempat_lahir.$tanggal_lahir.$alamat.$nomortelp.$email.$tanggal_daftar;
    //echo $jenis_kelamin;
    
    $sql = "INSERT INTO `anggota` (`id_anggota`, `username`, `password`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `nomor_handphone`, `email`, `tanggal_daftar`) VALUES ('', '".$username."', '".$password."', '".$nama."', '".$jenis_kelamin."', '".$tempat_lahir."', '".$tanggal_lahir."', '".$alamat."', '".$nomortelp."', '".$email."', '".$tanggal_daftar."');";

    $run = mysqli_query($koneksi,$sql);

    header('Location: ../login_anggota.php');
?>
