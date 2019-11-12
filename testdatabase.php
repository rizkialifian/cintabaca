<h2>List Anggota</h2>
<?php
include 'php/koneksi.php';
$anggota = mysqli_query($koneksi, "SELECT * FROM anggota ORDER BY RAND() LIMIT 0,1");
$no=1;
        foreach ($anggota as $row){

            echo "
            ID Anggota: ".$row['id_anggota']."<br>
            Nama Anggota: ".$row['nama'];
        }
?>