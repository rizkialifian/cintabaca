<?php
include 'php/koneksi.php';
$anggota = mysqli_query($koneksi, "SELECT * FROM anggota ORDER BY RAND() LIMIT 0,1");
$no=1;

date_default_timezone_set('Asia/Jakarta');

?>

<!DOCTYPE html>
<head>
    <title>Login Anggota | Cinta Baca</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->  
    <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->  
    <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->  
    <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" href="css/style.css">
<!--===============================================================================================-->
</head>
<body>
    <div class="limiter">
        <div class="container-login100" style="background-image: url('images/background/main4.jpg');">
            <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
                <form class="login100-form" action="" method="POST">
                    <span class="login100-form-title p-b-40">
                        Selamat Datang,

        <?php

        foreach ($anggota as $row){
            $date = date("Y-m-d");
            $time = date('H:i:s');
            $sql = "INSERT INTO `kehadiran` (`id_kehadiran`, `id_anggota`, `tanggal_masuk`, `waktu_masuk`) VALUES ('', '".$row['id_anggota']."', '".$date."', '".$time."');";
            mysqli_query($koneksi,$sql);
            echo "".$row['nama'];
        }
        ?>

                    </span>

                    <div class="txt1 text-center p-t-20 p-b-20">
                        <span>
                        Anda berhasil login.<br>Layar otomatis tertutup dalam:
                        </span>
                    </div>


        <div id="pesan" align="center"></div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script>
            var url = "login_anggota.php"; // url tujuan
            var count = 5; // dalam detik
            function countDown() {
                if (count > 0) {
                    count--;
                    var waktu = count + 1;
                    $('#pesan').html( + waktu + ' detik');
                    setTimeout("countDown()", 1000);
                } else {
                    window.location.href = url;
                }
            }
            countDown();
        </script>

                <br>
                </form>
            </div>
        </div>
    </div>

<!--
                    <div class="txt1 text-center p-t-20 p-b-20">
                        <span>
                            Atau masuk menggunakan
                        </span>
                    </div>
                    <div class="flex-c-m">
                        <a href="#" class="login100-social-item bg1">
                            <i class="fa fa-facebook"></i>
                        </a>

                        <a href="#" class="login100-social-item bg2">
                            <i class="fa fa-twitter"></i>
                        </a>

                        <a href="#" class="login100-social-item bg3">
                            <i class="fa fa-google"></i>
                        </a>
                    </div>
-->


    

    <div id="dropDownSelect1"></div>
    
<!--===============================================================================================-->
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
    <script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
    <script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
    <script src="js/main.js"></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script  src="js/script.js"></script>
<!--===============================================================================================-->

</body>
</html>