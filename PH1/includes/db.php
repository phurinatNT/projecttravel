<?php
$host='localhost'; $user='root'; $pass='root'; $db='phurinattour';
$conn = new mysqli($host,$user,$pass,$db);
if($conn->connect_errno){ die('DB connection failed: '.$conn->connect_error); }
$conn->set_charset('utf8mb4');
?>