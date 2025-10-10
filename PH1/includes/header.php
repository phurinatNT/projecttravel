<?php
if(session_status()==PHP_SESSION_NONE) session_start();
if(!function_exists('e')){
	function e($str){ return htmlspecialchars($str,ENT_QUOTES,'UTF-8'); }
}
?>
<!doctype html><html lang="th"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"><title>PhurinatTour - อุดรธานี</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="assets/css/style.css">
<!-- AOS for animations -->
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
</head><body>
<header class="header"><div class="container" style="display:flex;align-items:center;gap:12px"><div class="brand"><div class="logo">PT</div><div><h1 style="margin:0">PhurinatTour</h1><div style="font-size:12px">ภูริณัฐท่องเที่ยว - จังหวัดอุดรธานี</div></div></div><nav class="nav"><a href="index.php">หน้าแรก</a><a href="attractions.php">สถานที่</a><a href="products.php">สินค้า</a><a href="about.php">เกี่ยวกับ</a><a href="contact.php">ติดต่อ</a><?php if(isset($_SESSION['username'])): if($_SESSION['role']=='admin') echo '<a href="admin/dashboard.php">Admin</a>'; echo '<a href="logout.php">ออกจากระบบ ('.e($_SESSION['username']).')</a>'; else: echo '<a href="login.php">เข้าสู่ระบบ</a>'; endif; ?></nav></div></header><main class="container">
