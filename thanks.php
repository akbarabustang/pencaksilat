<!DOCTYPE html>
<?php
error_reporting(E_ALL ^ E_NOTICE ^ E_DEPRECATED );

// koneksi all in one
include "lib/aio_config.php";
include "eventinfo.php";
?>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Login | <?php echo $glob_event_name." :: ".$glob_system_name; ?></title>
        <link rel="stylesheet" href="./login/signin.css">
  </head>
  <body>
    <div class="login-wrap">
  <h3>Terima kasih telah mendaftar. Silahkan klik  <a href="login.php">Kembali</a> untuk login</h3>




</div>


    <script src='./assets/js/jquery-1.12.0.min.js'></script>
    <script src="./login/index.js"></script>
  </body>
</html>

