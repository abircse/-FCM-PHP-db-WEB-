<?php

$host="localhost";
$userName="root";
$password="";
$dbName="fcm_db";

$conn= mysqli_connect($host,$userName,$password,$dbName);

if($conn)

echo "Connection Successfully";
	
else

echo "Connection Failed";
	
?>

