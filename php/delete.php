<?php
    require "koneksi.php";

    $id = $_GET['id'];

    $sql = "DELETE FROM anggota WHERE id_anggota = '".$id."' ";
    $run = mysqli_query($koneksi,$sql);


    header('Location: ' . $_SERVER['HTTP_REFERER']);
?>