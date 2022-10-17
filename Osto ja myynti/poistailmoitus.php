<?php
session_start();
include("kantayhteys.php");

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
header("Content-Type: text/html; charset=utf-8");

$poista = $_POST['poista'];
$ilmoitus_id = $_POST['poista_id'];

if (isset($poista)){
$query= mysqli_query($dbconnect, "DELETE FROM ilmoitukset WHERE ilmoitus_id = '$ilmoitus_id'");

echo "Ilmoitus poistettu! <a href='index.php'>Palaa edelliselle sivulle</a>.";
}
?>
