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
  <h2><?php echo $glob_event_name; ?> <br><small><?php echo $glob_system_name; ?></small></h2>
  
  <!-- form login -->
  <div class="form">
     <form name='myform' method="post" action="login.php" enctype="multipart/form-data">
        <input type="text" placeholder="Username Login" name="user" />
        <input type="password" placeholder="Password" name="password" />
        <input type="submit" name="submit" value="Login" />
    </form>
  </div>
<h5 class="text-center" >Belum Punya Akun ? Silahkan Register</h5>
  <div class="form">
     <form method="post" action="login.php">
      <input type="hidden" name="status" value="user" >
        <input type="text" placeholder="Username Login" name="usern" />
        <input type="password" placeholder="Password" name="passw" />
        <input type="text" placeholder="Nama Admin" name="nama" />
        <input type="submit" class="btn-sm" name="submit2" value="Register" style="background: blue" />
    </form>
  </div>

</div>


    <script src='./assets/js/jquery-1.12.0.min.js'></script>
    <script src="./login/index.js"></script>
  </body>
</html>

<?php
  if($_POST[submit2])
  {
     $sql = "insert into admin (user, password, status, nama) values('".$_POST['usern']."','".$_POST['passw']."', '".$_POST['status']."', '".$_POST['nama']."') ";
     $query= mysql_query($sql); 
    if ($query) {
      echo "<meta http-equiv='refresh' content='0;url=thanks.php' />";
    }
  
}  


//mengamil data dari input
    $user=$_POST['user'];
    $password = $_POST['password'];
    $submit=$_POST['submit'];

//mengechek database untuk login
if($submit){

        $sql = "select * from admin where user='$user' and password='$password'";
        $query= mysql_query($sql);
        $result = mysql_fetch_array($query);
        if($result !=""){
            //berhasil login
            session_start();
            $_SESSION['user']=$result['user'];
            $_SESSION['password']=$result['password'];
            $_SESSION['nama']=$result['nama'];
            $_SESSION['status']=$result['status'];
            //login sebagai admin
            if ( isset($_SESSION['status'])){
            ?>
                    <meta http-equiv="refresh" content="0;url=index.php" />
            <?php
            }
         }else {
             //gagal login
            ?>
                    <script>
                        alert('Login Gagal!');
                    </script>
                    <meta http-equiv="refresh" content="0;url=index.php" />
                <?php
            }
}
?>
