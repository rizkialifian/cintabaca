<?php
    require "php/koneksi.php";

    $id = $_POST['id'];
    $judul = $_POST['nama_buku'];
    $penulis = $_POST['nama_penulis'];
    $genre = $_POST['genre'];
    $tahun = $_POST['tahun'];
    $jumlah = $_POST['jumlah'];
    $tahun = $_POST['tahun'];
    $kode_rak = $_POST['kode_rak'];

    //echo $id.$username.$alamat;
    // echo $jenis_kelamin;
    // die;
    
    $sql = "UPDATE `buku` SET nama_buku = '".$judul."', nama_penulis = '".$penulis."', genre = '".$genre."', tahun = '".$tahun."', jumlah = '".$jumlah."', tahun = '".$tahun."', kode_rak = '".$kode_rak."' WHERE id_buku = '".$id."';";

    mysqli_query($koneksi,$sql);

    header('Location: daftar-buku.php');

?>