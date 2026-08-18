<?php
$hari = "jumat";

// if ($hari == "senin"){
//     echo "Hari " . $hari . "<br>";
//     echo "Seragam : Putih Abu";
// }elseif ($hari == "selasa" || $hari == "kamis"){
//     echo "Hari " . $hari . "<br>";
//     echo "Seragam : Jurusan";
// }elseif ($hari == "rabu"){
//     echo "Hari " . $hari . "<br>";
//     echo "Seragam : Almamater";
// }elseif ($hari == "jumat"){
//     echo "Hari " . $hari . "<br>";
//     echo "Seragam : Pramuka";
// }


switch ($hari) {
    case "senin":
        echo "Hari " . $hari . "<br>";
        echo "Seragam : Putih Abu";
        break;
    case "jumat":
        echo "Hari " . $hari . "<br>";
        echo "Seragam : Pramuka";
        break;
    case "selasa":
    case "kamis":
        echo "Hari " . $hari . "<br>";
        echo "Seragam : Jurusan";
        break;
    case "rabu":
        echo "Hari " . $hari . "<br>";
        echo "Seragam : Almamater";
        break;

    default:
        echo "libur";
}

?>