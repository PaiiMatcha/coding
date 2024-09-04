<?php
// server
$servername = "localhost";
$username = "root";
$password = "";
$database_name = "test_database";

//connection
$conn = mysqli_connect($servername,$username,$password,$database_name);

if(!$conn){
    die("connection failed" . mysqli_connect_error());
}
?>