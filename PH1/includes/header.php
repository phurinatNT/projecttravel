<?php
if (session_status() == PHP_SESSION_NONE)
	session_start();
if (!function_exists('e')) {
	function e($str)
	{
		return htmlspecialchars($str, ENT_QUOTES, 'UTF-8');
	}
}
?>
<!doctype html>
<html lang="th">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>PhurinatTour - อุดรธานี</title>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="/newgen/PH1/assets/css/style.css">
	<!-- AOS for animations -->
	<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
	<style>
		/* เพิ่มสไตล์พื้นฐานสำหรับ layout, header, cards และฟอร์ม */
		:root {
			--brand: #0b69ff;
			--muted: #6b7280;
			--card-bg: #fff;
			--page-bg: #f4f6fb;
			--radius: 8px;
			--max-w: 1100px;
		}

		html,
		body {
			height: 100%;
			margin: 0;
			font-family: 'Poppins', sans-serif;
			background: var(--page-bg);
			color: #1f2937
		}

		.container {
			max-width: var(--max-w);
			margin: 20px auto;
			padding: 0 16px
		}

		.header {
			background: linear-gradient(90deg, #ffffffcc, #f7f9ffcc);
			box-shadow: 0 2px 6px rgba(16, 24, 40, 0.04);
			padding: 14px;
			border-radius: 10px
		}

		.brand {
			display: flex;
			align-items: center;
			gap: 12px
		}

		.logo {
			background: var(--brand);
			color: #fff;
			width: 48px;
			height: 48px;
			display: flex;
			align-items: center;
			justify-content: center;
			border-radius: 8px;
			font-weight: 700
		}

		.header h1 {
			font-size: 18px;
			margin: 0
		}

		.header .nav {
			display: flex;
			gap: 10px;
			align-items: center;
			flex-wrap: wrap
		}

		.header .nav a {
			color: var(--muted);
			text-decoration: none;
			padding: 8px 10px;
			border-radius: 8px;
			font-weight: 600
		}

		.header .nav a:hover {
			background: rgba(11, 105, 255, 0.08);
			color: var(--brand)
		}

		main.container {
			margin-top: 18px
		}

		/* Card */
		.card {
			background: var(--card-bg);
			padding: 16px;
			border-radius: var(--radius);
			box-shadow: 0 6px 18px rgba(15, 23, 42, 0.06);
			margin-bottom: 16px
		}

		/* Buttons */
		.btn {
			display: inline-block;
			background: var(--brand);
			color: #fff;
			padding: 8px 12px;
			border-radius: 8px;
			text-decoration: none;
			font-weight: 600;
			border: none;
			cursor: pointer
		}

		.btn.secondary {
			background: #eef2ff;
			color: var(--brand);
			border: 1px solid rgba(11, 105, 255, 0.08)
		}

		.actions {
			display: flex;
			gap: 8px;
			flex-wrap: wrap
		}

		/* Grid for admin dashboard */
		.grid {
			display: grid;
			grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
			gap: 12px;
			margin-top: 12px
		}

		/* Form styles */
		.form-row {
			display: flex;
			flex-direction: column;
			margin-bottom: 10px
		}

		label {
			font-size: 13px;
			color: var(--muted);
			margin-bottom: 6px
		}

		input[type="text"],
		input[type="url"],
		textarea,
		select {
			padding: 10px;
			border: 1px solid #e6e9ef;
			border-radius: 8px;
			font-size: 14px;
			background: #fff;
			outline: none
		}

		textarea {
			min-height: 100px;
			resize: vertical
		}

		.form-actions {
			display: flex;
			gap: 8px;
			align-items: center;
			margin-top: 8px
		}

		/* Responsive tweaks */
		@media (max-width:680px) {
			.brand h1 {
				display: none
			}

			.header .nav {
				gap: 6px
			}
		}
	</style>
</head>

<body>
	<header class="header">
		<div class="container" style="display:flex;align-items:center;gap:12px">
			<div class="brand">
				<div class="logo">PT</div>
				<div>
					<h1 style="margin:0">PhurinatTour</h1>
					<div style="font-size:12px">ภูริณัฐท่องเที่ยว - จังหวัดอุดรธานี</div>
				</div>
			</div>
			<nav class="nav"><a href="/newgen/PH1/index.php">หน้าแรก</a><a href="/newgen/PH1/attractions.php">สถานที่</a><a
				href="/newgen/PH1/products.php">สินค้า</a><a href="/newgen/PH1/about.php">เกี่ยวกับ</a><a
				href="/newgen/PH1/contact.php">ติดต่อ</a><?php if (isset($_SESSION['username'])):
						if ($_SESSION['role'] == 'admin')
							echo '<a href="/newgen/PH1/admin/dashboard.php">Admin</a>';
						echo '<a href="/newgen/PH1/logout.php">ออกจากระบบ (' . e($_SESSION['username']) . ')</a>'; else:
						echo '<a href="/newgen/PH1/login.php">เข้าสู่ระบบ</a>'; endif; ?>
			</nav>
		</div>
	</header>
	<main class="container">