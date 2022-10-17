<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "tietokanta";

// Create connection
$dbconnect = mysqli_connect($servername, $username, $password, $database);

// Check connection
if (!$dbconnect) {
  die("Yhteys tietokantaan ei toimii: " . mysqli_connect_error());
}else{
 // die("Yhteys tietokantaan toimii";
}

?>