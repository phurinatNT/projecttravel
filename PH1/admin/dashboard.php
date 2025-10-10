<?php require '../includes/auth.php';
require '../includes/db.php';
require '../includes/header.php';
if ($_SESSION['role'] !== 'admin') {
    echo '<div class="card">คุณไม่มีสิทธิ์</div>';
    require '../includes/footer.php';
    exit();
} ?>
<div class="card" style="max-width: 800px; margin: 2rem auto;">
    <div style="display:flex; justify-content: space-between; align-items: center; margin-bottom: 1rem;">
        <h3 style="margin: 0;">Admin Dashboard</h3>
        <a class="btn home-btn pulse" href="/newgen/PH1/index.php" title="กลับหน้าแรก">
            <span class="icon">⌂</span>
            <span class="label">กลับหน้าแรก</span>
        </a>
    </div>
    <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 16px;">
        <a class="btn" href="manage_places.php" style="padding: 20px; text-align: center; font-size: 1.1rem;">จัดการสถานที่</a>
        <a class="btn" href="manage_products.php" style="padding: 20px; text-align: center; font-size: 1.1rem;">จัดการสินค้า</a>
        <a class="btn" href="manage_users.php" style="padding: 20px; text-align: center; font-size: 1.1rem;">จัดการผู้ใช้</a>
    </div>
</div><?php require '../includes/footer.php'; ?>