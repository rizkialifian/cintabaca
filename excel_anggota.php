<?php
    require "php/koneksi.php";
    $sql = "SELECT * FROM anggota";

    $run = mysqli_query($koneksi,$sql);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Anggota | Cinta Baca</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />

</head>

<body>
    
	<?php
	header("Content-type: application/vnd-ms-excel");
	header("Content-Disposition: attachment; filename=Data Anggota.xls");
	?>
    <table style="width:100%" border="1">
        <thead>
            <tr>
                <th>Username</th>
                <th>Name</th>
                <th>Gender</th>
                <th>Address</th>
                <th>Birth</th>
                <th>Birth Place</th>
                <th>Phone</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
        <?php while($row = mysqli_fetch_array($run)) { ?>
            <tr>
                <td><?= $row['username']; ?></td>                                
                <td><?= $row['nama']; ?></td>
                <td><?= $row['jenis_kelamin']; ?></td>
                <td width="10%"><?= $row['alamat']; ?></td>
                <td><?= $row['tanggal_lahir']; ?></td>
                <td><?= $row['tempat_lahir']; ?></td>
                <td>0<?= $row['nomor_handphone']; ?></td>
                <td><?= $row['email']; ?></td>
            </tr>
        <?php } ?>
        </tbody>
    </table>
                  
</body>

</html>
