<?php
    require "php/koneksi.php";

    $id = $_GET['id'];

    $sql = "DELETE FROM buku WHERE id_buku = '".$id."' ";
    $run = mysqli_query($koneksi,$sql);


    header('Location: ' . $_SERVER['HTTP_REFERER']);
?>