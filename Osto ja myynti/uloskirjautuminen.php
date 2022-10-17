<?php
session_start(); 
include("kantayhteys.php");
?>
<?php
/*ini_set('display_errors', 1);	   
ini_set('display_startup_errors', 1);  
error_reporting(E_ALL);*/

header("Content-Type: text/html; charset=utf-8");

if ($_SESSION['LOGGEDIN'] == 1) {
    session_unset();
    session_destroy();

    echo "Uloskirjautuminen onnistui! <br><br> <a href='kirjautuminen.html'>Kirjaudu</a>
    uudelleen sisään tai <a href='index.php'>palaa etusivulle</a>.";
    }
?>