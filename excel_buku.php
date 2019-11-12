<?php
    require "php/koneksi.php";
    $sql = "SELECT * FROM buku";

    $run = mysqli_query($koneksi,$sql);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Buku | Cinta Baca</title>

</head>

<body>
    <?php
	header("Content-type: application/vnd-ms-excel");
	header("Content-Disposition: attachment; filename=Data Buku.xls");
	?>
    <table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>Nama Buku</th>
                <th>Nama Penulis</th>
                <th>Genre</th>
                <th>Tahun</th>
                <th>Jumlah</th>
                <th>Kode Rak</th>
            </tr>
        </thead>
        <tbody>
        <?php while($row = mysqli_fetch_array($run)) { ?>
            <tr>
                <td><?= $row['nama_buku']; ?></td>
                <td><?= $row['nama_penulis']; ?></td>
                <td><?= $row['genre']; ?></td>
                <td><?= $row['tahun']; ?></td>
                <td><?= $row['jumlah']; ?></td>
                <td><?= $row['kode_rak']; ?></td>
            </tr>
        <?php } ?>
        </tbody>
    </table>
</body>

</html>
