<?php
    require "php/koneksi.php";

    $judul = $_GET['nama_buku'];
    // $penulis = $_GET['nama_penulis'];

    $sql = "SELECT * FROM buku WHERE nama_buku LIKE '%".$judul."%'";
    // $sql = "SELECT * FROM buku WHERE buku.nama_buku LIKE '%".$judul."%' OR buku.nama_penulis LIKE '%".$penulis."%' ";

    $run = mysqli_query($koneksi,$sql);
    // echo $_GET['nama_buku'];
    // die;
    if(!mysqli_num_rows($run)){
        header('location:cari_buku.php?search=failed');
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Cari Buku</title>
</head>
<body style="background-color: #275099;">
<br>
    <div class="container-fluid">
        <div class="row">        
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <table class="table bg-info text-white">
                    <thead>
                        <th>Judul</th>
                        <th>Pengarang</th>
                        <th>Genre</th>
                        <th>Tahun</th>
                        <th>Jumlah</th>
                        <th>Kode Rak</th>
                    </thead>
                    <?php while($row = mysqli_fetch_array($run)) { ?>
                        <tr>
                            <td><?php echo $row['nama_buku']; ?></td>
                            <td><?php echo $row['nama_penulis']; ?></td>
                            <td><?php echo $row['genre']; ?></td>
                            <td><?php echo $row['tahun']; ?></td>
                            <td><?php echo $row['jumlah']; ?></td>
                            <td><?php echo $row['kode_rak']; ?></td>
                        </tr>
                    <?php } ?>
                    <tr>
                        <td colspan=6 align="center"></td>
                    </tr>
                    
                </table>
            </div>           
            <div class="col-md-4"></div>
            <div class="col-md-12 text-center">
                <a href="cari_buku.php" class="btn btn-primary" >Back</a>
            </div>
        </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>
