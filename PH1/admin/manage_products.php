<?php
require '../includes/auth.php';
require '../includes/db.php';
require '../includes/header.php';

if ($_SESSION['role'] !== 'admin') {
	header('Location: dashboard.php');
	exit();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['add'])) {
	$name = $_POST['name'];
	$desc = $_POST['description'];
	$price = (float)$_POST['price'];
	$img = $_POST['image'] ?: 'assets/img/product1.jpg';
	$stmt = $conn->prepare('INSERT INTO products (province_id,name,description,price,image) VALUES (1,?,?,?,?)');
	$stmt->bind_param('ssds', $name, $desc, $price, $img);
	$stmt->execute();
}

if (isset($_GET['delete'])) {
	$id = (int)$_GET['delete'];
	$s = $conn->prepare('DELETE FROM products WHERE id=?');
	$s->bind_param('i', $id);
	$s->execute();
}

$products = $conn->query('SELECT * FROM products');
?>

<div class="card">
	<h3>จัดการสินค้า</h3>

	<form method="post" class="form-grid" style="margin-top:12px">
		<div class="form-row">
			<label>ชื่อสินค้า</label>
			<input name="name" placeholder="ชื่อสินค้า" required>
		</div>

		<div class="form-row">
			<label>ราคา (บาท)</label>
			<input name="price" placeholder="ราคา" type="number" step="0.01">
		</div>

		<div class="form-row">
			<label>รูปภาพ (path)</label>
			<input name="image" placeholder="assets/img/product1.jpg">
		</div>

		<div class="form-row" style="grid-column:1/3">
			<label>รายละเอียด</label>
			<textarea name="description" placeholder="รายละเอียดสินค้า"></textarea>
		</div>

		<div style="grid-column:1/3;margin-top:6px">
			<button class="btn" name="add" type="submit">เพิ่มสินค้า</button>
		</div>
	</form>

	<hr>
	<h4>รายการ</h4>
	<div class="list-cards">
		<?php while ($p = $products->fetch_assoc()) : ?>
			<div class="card list-card" style="display:flex;gap:12px;align-items:center">
				<img src="<?php echo e($p['image'] ?: 'assets/img/product1.jpg'); ?>" alt="" style="width:96px;height:72px;object-fit:cover;border-radius:6px">
				<div style="flex:1">
					<strong><?php echo e($p['name']); ?></strong>
					<div style="color:var(--muted);font-size:0.9rem"><?php echo e($p['price']); ?> บาท</div>
				</div>
				<div>
					<a href="?delete=<?php echo $p['id']; ?>" onclick="return confirm('ลบ?')" style="color:#c0392b">ลบ</a>
				</div>
			</div>
		<?php endwhile; ?>
	</div>

</div>

<?php require '../includes/footer.php'; ?>