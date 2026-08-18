<?php

$angka = [
    [21, 22, 23, 24, 25],
    [31, 32, 33, 34, 35],
    [41, 42, 43, 44, 45]
    ];  



$index =0;
while ($index < count($angka)) {

        for ($i = 0; $i < count($angka[$index]); $i++) {
            if ($index == 0 && $i == 0) {
                echo $angka[$index][$i] . " ";
            } elseif ($index == 1 && $i == 2) {
                echo $angka[$index][$i] . " ";
            } elseif ($index == 2 && $i == 4) {
                echo $angka[$index][$i] . " ";
            }

        
    }
    $index++;
     echo "<br>";
}
?>