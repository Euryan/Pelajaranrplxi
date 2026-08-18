<?php

include "data.php";

$i = 0;
do {
     {
        echo "Nama: " . $NamaSiswa[$i]["nama"] . "<br>";
        echo "Umur: " . $NamaSiswa[$i]["umur"] . "<br>";
        echo "Alamat: " . $NamaSiswa[$i]["alamat"] . "<br>";
        echo "=============================<br>";    }
    $i++;
} while ($i < count($NamaSiswa));
