<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Registrasi Anggota | Cinta Baca</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/main_daftar_anggota.css" rel="stylesheet" media="all">
</head>

<body>
    <div class="page-wrapper background p-t-50 p-b-50 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title" align="center"><b>Formulir Registrasi Anggota<br>Perpustakaan Cinta Baca</b></h2>
                    <hr>
                    <br>
                    <form method="POST" action="php/daftar.php">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">ID Kamu (tidak dapat diubah)</label>
                                    <input class="input--style-4" type="text" name="first_name" disabled="" placeholder="hahaha" required>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Username</label>
                                    <input class="input--style-4" type="text" name="username" required>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Nama Lengkap</label>
                                    <input class="input--style-4" type="text" name="name" required>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Kata Sandi</label>
                                    <input class="input--style-4" type="password" name="password" required>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Tanggal Lahir</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="date" name="tanggal_lahir" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Tempat Lahir</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4 js-datepicker" type="text" name="tempat_lahir" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Email</label>
                                    <input class="input--style-4" type="email" name="email" required>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Nomor telepon</label>
                                    <input class="input--style-4" type="number" name="phone" required>
                                </div>
                            </div>
                            
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Alamat</label>
                                    <input class="input--style-4" type="text" name="alamat" required>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Jenis Kelamin</label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45">Pria
                                            <input type="radio" name="gender" value="Laki-Laki" required>
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">Wanita
                                            <input type="radio" name="gender" value="Perempuan" required>
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>

                        <div class="row row-space">
                            <div class="col-2">
                                <button class="btn btn--radius-2 btn--blue" type="submit">Masukkan Data</button>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <a href="index.html">
                                        <img src="Images/CintaBacaNoCaption.png" style="width: 25%; float: right; margin: 0px">
                                    </a>
                                </div>
                            </div>
                        </div>


                        <div class="row row-space">
                            <div class="col-2"></div>
                                <label class="label" style="font-size: 12px; text-align: right;">
                                    <b style="font-size: 14px; line-height: 25px">Perpustakaan Cinta Baca</b><br>
                                    Jln. Bogor Baru A. 2 No.17, RT.01/RW.08<br>Tegal Gundil, Kec. Bogor Utara, Kota Bogor<br>Kode pos 16152
                                </label>
                            </div>
                            <a href="index.php" class="label m-t-40" style="text-decoration: none; font-size: 14px">
                            Kembali ke Beranda
                        </a>
                        </div>

                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global_daftar_anggota.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->  