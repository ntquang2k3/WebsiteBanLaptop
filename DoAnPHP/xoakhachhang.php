<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
include("./include/Connect.php");

if (isset($_GET["mkh"])) {
    $maSP = $_GET["mkh"];

    // Xóa sản phẩm từ CSDL
    $sql = "DELETE FROM User WHERE MaKhachHang = ?";
    $sta = $pdo->prepare($sql);
    $kq = $sta->execute([$maSP]);

    if ($kq) {
        $_SESSION['checkXoaKhachHang'] = "Xóa thành công";
    } else {
        $_SESSION['checkXoaKhachHang'] = "Không thể xóa";
    }
}
// Chuyển hướng sau khi hoàn thành
header("Location: /DoAnPHP/quanlikhachhang.php");
exit();