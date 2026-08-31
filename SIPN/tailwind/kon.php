<?php
$username = "root";
$password = "";
$hostname = "localhost";
$db = "xirpl1";

$conn = mysqli_connect($hostname, $username, $password, $db);

if (!$conn) {
    die("Koneksi gagal: " . mysqli_connect_error());
}
else {
    echo "Koneksi berhasil";
}
?>  