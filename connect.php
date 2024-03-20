<?php
$servername = "localhost";
$username = "id21048547_reddyj699";
$password = "2{UEXhlm_+D[#JtB";
$dbname = "id21048547_jaswanth";

try {
    $mysqli = new mysqli($servername, $username, $password, $dbname);
    if ($mysqli->connect_errno) {
        die("Error connecting: " . $mysqli->connect_error);
    }
} catch(Exception $e) {
    die("Error connecting: " . $e->getMessage());
}


?>
