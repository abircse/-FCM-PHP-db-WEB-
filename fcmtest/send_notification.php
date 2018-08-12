<?php

require 'init.php';
$message = $_POST['message'];
$title = $_POST['title'];
$path_to_fcm = 'http://fcm.googleapis.com/fcm/send';
$server_key = "AAAA61pEPn0:APA91bHAVY6m-eRohUrGgdWQyAriE0wxSo5w3O5GlOHR-w5WsloNuiDGqQZQrasKkOrqrscHyWoazakEkkSZY1b89h-Gchhq3dNzEVp7AyJWrPIJpezlzGNaHOJJ09EORuI14-nkZrmpQQSaTCUeWvtK0BzLIFJU1Q";
$sql = "select fcm_token from fcm_info";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_row($result);
$key = $row[0];

$headers = array( 'Authorization:key=' .$server_key,
				'Content-Type: application/json'
			);
			
$fields = array('to'=>$key,'notification'=>array('title'=>$title,'body'=>$message));			

$payload =json_encode($fields);

$curl_session = curl_init();

curl_setopt($curl_session, CURLOPT_URL, $path_to_fcm);
curl_setopt($curl_session, CURLOPT_POST, true);
curl_setopt($curl_session, CURLOPT_HTTPHEADER, $headers);
curl_setopt($curl_session, CURLOPT_RETURNTRANSFER, true);
curl_setopt($curl_session, CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($curl_session, CURLOPT_IPRESOLVE, 'CURLOPT_IPRESOLVE_V4' );
curl_setopt($curl_session, CURLOPT_POSTFIELDS, $payload);


$result = curl_exec($curl_session);

curl_close($curl_session);
mysqli_close($conn);


?>

