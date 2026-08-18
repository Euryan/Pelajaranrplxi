<?php

$angka = [
    [21, 22, 23, 24, 25],
    [31, 32, 33, 34, 35],
    [41, 42, 43, 44, 45]
    ];  



$index =0;
while ($index < count($angka)) {

    if ($index != 1) {
        for ($i = 0; $i < count($angka[$index]); $i++) {
  

                echo $angka[$index][$i] . " ";
        }    
            echo "<br>";
        
    }
    $index++;
}
?>