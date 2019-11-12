<?php
	$server	="localhost";
	$user	="root";
	$psw	="";
	$nama_db="cinta_baca";
	$koneksi = mysqli_connect($server,$user,$psw,$nama_db);

	function Redirect($url, $permanent = false)
	{
		header('Location: ' . $url, true, $permanent ? 301 : 302);

		exit();
	}
?>