<?php
error_reporting(E_ALL ^ E_NOTICE ^ E_DEPRECATED);

$host 		= "localhost";
$user_sql	= "root";
$pass_sql 	= "";
$dbn  		= "pencaksilat";


ini_set( "display_errors", true );
define( "DB_DSN", "mysql:host=".$host.";dbname=".$dbn);
define( "DB_USERNAME", $user_sql );
define( "DB_PASSWORD", $pass_sql );
define('DB_CHARACSET', 'utf8');


$koneksi_login 	= mysql_connect($host, $user_sql, $pass_sql) or die("Konesi Ke Server DB Bermasalah"); 
$dbname 		= mysql_select_db($dbn) or die("Database tidak tersedia / down");





?>