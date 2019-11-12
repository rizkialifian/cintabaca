<?php
    if(@$_GET['search']=='failed')
        echo "<script type='text/javascript'>alert('Buku Tidak Tersedia');</script>";

?>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="author" content="colorlib.com">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Ubuntu&display=swap" rel="stylesheet"/> 
    <link href="css/maincari.css" rel="stylesheet" />
  </head>
  <body>
    <div class="s128">
      <form action="cari-buku.php" method="GET">
        <button type="submit" hidden></button>
        <div class="inner-form">
          <div class="row">
            <div class="header">Hai, cari buku apa?</div><br><br><br>
            <div class="input-field first" id="first">
              <input class="input" id="inputFocus" type="text" placeholder="nama buku . . ." name="nama_buku" />
              <button class="clear" id="clear">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                  <path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z"></path>
                </svg>
              </button>
              <br>
            </div>
          </div>
        </div>
      </form>
    </div>
    <script>
      var btnDelete = document.getElementById('clear');
      var inputFocus = document.getElementById('inputFocus');
      btnDelete.addEventListener('click', function(e)
      {
        e.preventDefault();
        inputFocus.value = ''
      })
      document.addEventListener('mouseover', function(e)
      {
        if (document.getElementById('first').contains(e.target))
        {
          inputFocus.classList.add('isFocus')
        }
        else
        {
          // Clicked outside the box
          inputFocus.classList.remove('isFocus')
        }
      });

    </script>
  </body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
