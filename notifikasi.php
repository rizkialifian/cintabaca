<html>
	<head>
		<title>Web Notifikasi dengan Javascript</title>
		
		<!-- Bootstrap -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	</head>
	<body>
		
		<div class="container" style="margin-top: 10px;text-align:center;">
			<div class="row">
				<button class="btn btn-warning" onclick="notifikasi()">
					Klik Di sini
				</button>
			</div>
		</div>

		<!-- Jquery -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		
		<!-- Notifikasi Script -->
		<script>
			$(document).ready(function() {
				  if (Notification.permission !== "granted")
					Notification.requestPermission();
			});
			
			function notifikasi() {
				if (!Notification) {
					alert('Browsermu tidak mendukung Web Notification.'); 
					return;
				}
				if (Notification.permission !== "granted")
					Notification.requestPermission();
				else {
					var notifikasi = new Notification('Cinta Baca | Notifikasi', {
						icon: 'Images/CintaBacaNoCaption.png',
						body: "Gais, ada pengunjung masuk!",
					});
					notifikasi.onclick = function () {
						window.open("index.html");      
					};
					setTimeout(function(){
						notifikasi.close();
					}, 5000);
				}
			};
		</script>
	</body>
</html>