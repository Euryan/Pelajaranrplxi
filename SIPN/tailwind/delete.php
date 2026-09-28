<?php
include_once __DIR__ . '/kon.php';

$role = $_GET['role'] ?? '';
$id   = isset($_GET['id']) ? (int) $_GET['id'] : 0;

if ($id <= 0) {
    echo "<script>alert('ID tidak valid!'); window.location.href = 'tabeluseraja.php';</script>";
    exit;
}

if ($role === 'siswa') {
    mysqli_query($conn, "DELETE FROM siswa WHERE users_id = $id");
    $queryUser = "DELETE FROM users WHERE id = $id";

} elseif ($role === 'guru') {
    mysqli_query($conn, "DELETE FROM guru WHERE user_id = $id");
    $queryUser = "DELETE FROM users WHERE id = $id";

} else {
    $queryUser = "DELETE FROM users WHERE id = $id";
}

if (mysqli_query($conn, $queryUser)) {
    echo "<script>alert('Data berhasil dihapus cuy!'); window.location.href = 'tabeluseraja.php';</script>";
} else {
    echo "<script>alert('Gagal menghapus data: " . addslashes(mysqli_error($conn)) . "'); window.location.href = 'tabeluseraja.php';</script>";
}
?>