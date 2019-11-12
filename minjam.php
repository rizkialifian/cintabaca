<?php
    require "php/koneksi.php";

    $id_anggota = $_POST['id_anggota'];
    $id_buku = $_POST['id_buku'];
    $date_minjam = date("Y-m-d");
    $date_kembali = date('Y-m-d', strtotime($date_minjam. ' + 7 days'));

    $sql_limit_pinjam = "SELECT limit_pinjam FROM anggota WHERE id_anggota = ".$id_anggota." ";
    $run_sql_limit_pinjam = mysqli_query($koneksi,$sql_limit_pinjam);
    $data = mysqli_fetch_array($run_sql_limit_pinjam);
    $limit = $data[0];
    
    if($limit>0){
        $limit_pinjam = $data[0]-1;
        $sql_insert_minjam = "INSERT INTO `peminjaman` (`id_peminjaman`, `id_anggota`, `id_buku`, `tanggal_masuk`, `tanggal_kembali`) VALUES (NULL, '".$id_anggota."', '".$id_buku."', '".$date_minjam."', '".$date_kembali."');";
        $sql_update_anggota = "UPDATE `anggota` SET `limit_pinjam` = '".$limit_pinjam."' WHERE `anggota`.`id_anggota` = ".$id_anggota.";";

        mysqli_query($koneksi,$sql_insert_minjam);
        mysqli_query($koneksi,$sql_update_anggota);

        Redirect('peminjaman-buku.php?minjam=success',false);
    }else{
        Redirect('peminjaman-buku.php?minjam=failed',false);
    }
    
    //echo $sql;
?>