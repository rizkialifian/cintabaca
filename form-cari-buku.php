<?php
    if(@$_GET['search']=='failed')
        echo "<script type='text/javascript'>alert('Buku Tidak Tersedia');</script>";

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cari Buku</title>
</head>
<body>
    <form action="cari-buku.php" method="GET">
        <table align="center">
            <tr>
                <td>Judul</td>
                <td><input type="text" name="nama_buku"></td>
            </tr>
            <!-- <tr>
                <td>Penulis</td>
                <td><input type="text" name="nama_penulis"></td>
            </tr>
            <tr><button type="submit">Cari</button></tr> -->
        </table>
    </form>
</body>
</html>