<?php 
$nilai = 20;
$izin = "dipersilahkan";

switch ($nilai) {
    case ($nilai >= 0 && $nilai <= 100):
        switch ($izin){
            case "dipersilahkan":

            case $nilai >= 91 && $nilai <= 100:
                echo "Nilai A";
                break;
            case $nilai >= 81 && $nilai <= 90:
                echo "Nilai B";
                break;
            case $nilai >= 71 && $nilai <= 80:
                echo "Nilai C";
                break;
            case $nilai >= 60 && $nilai <= 70:
                echo "Nilai D";
                break;
            default:
                echo "blank";
    } break;

    case "tidak dipersilahkan":
        echo "Nilai melebihi Batas";
        break;
    default:
        echo "Nilai melebihi Batas";
     }

