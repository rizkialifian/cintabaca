<?php
    require "php/koneksi.php";

    $id = $_POST['id'];
    $username = $_POST['username'];
    $nama = $_POST['nama'];
    $jenis_kelamin = $_POST['jenis_kelamin'];
    $tempat_lahir = $_POST['tempat_lahir'];
    $tanggal_lahir = $_POST['tanggal_lahir'];
    $alamat = $_POST['alamat'];
    $nomortelp = $_POST['nomor_handphone'];
    $email = $_POST['email'];

    //echo $id.$username.$alamat;
    // echo $jenis_kelamin;
    // die;
    
    $sql = "UPDATE `anggota` SET username = '".$username."', nama = '".$nama."', jenis_kelamin = '".$jenis_kelamin."', tempat_lahir = '".$tempat_lahir."', tanggal_lahir = '".$tanggal_lahir."', nomor_handphone = '".$nomortelp."', alamat = '".$alamat."', email = '".$email."' WHERE id_anggota = '".$id."';";

    mysqli_query($koneksi,$sql);

    header('Location: manajemen-anggota.php');

?>