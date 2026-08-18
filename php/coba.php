<?php
$nilai = 105; 

switch (true) {
    case ($nilai > 100 || $nilai < 0):
        echo "Error: Nilai tidak valid!";
        break;
        
    case ($nilai >= 90):
        echo "Nilai sangat baik (A)";
        break;
    case ($nilai >= 75):
        echo "Nilai baik (B)";
        break;
    default:
        echo "Nilai kurang";
        break;
}
?>
