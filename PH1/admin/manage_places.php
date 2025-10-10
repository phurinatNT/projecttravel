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
	$type = (int)$_POST['type_id'];
	$desc = $_POST['description'];
	$addr = $_POST['address'];
	$lat = $_POST['latitude'];
	$lng = $_POST['longitude'];
	$img = $_POST['image'] ?: 'assets/img/place1.jpg';
	$stmt = $conn->prepare('INSERT INTO places (type_id,name,description,address,latitude,longitude,image) VALUES (?,?,?,?,?,?,?)');
	$stmt->bind_param('isssdds', $type, $name, $desc, $addr, $lat, $lng, $img);
	$stmt->execute();
}

if (isset($_GET['delete'])) {
	$id = (int)$_GET['delete'];
	$s = $conn->prepare('DELETE FROM places WHERE id=?');
	$s->bind_param('i', $id);
	$s->execute();
}

$types = $conn->query('SELECT * FROM place_types');
$places = $conn->query('SELECT p.*,t.name as type_name FROM places p LEFT JOIN place_types t ON p.type_id=t.id');
?>

<div class="card">
	<h3>จัดการสถานที่</h3>

	<form method="post" class="form-grid" style="margin-top:12px">
		<div class="form-row">
			<label>ชื่อสถานที่</label>
			<input name="name" placeholder="ชื่อสถานที่" required>
		</div>

		<div class="form-row">
			<label>ประเภท</label>
			<select name="type_id">
				<?php while ($t = $types->fetch_assoc()) {
					echo '<option value="' . $t['id'] . '">' . e($t['name']) . '</option>';
				} ?>
			</select>
		</div>

		<div class="form-row">
			<label>ที่อยู่</label>
			<input name="address" placeholder="ที่อยู่">
		</div>

		<div class="form-row">
			<label>รูปภาพ (path)</label>
			<input name="image" placeholder="assets/img/place1.jpg">
		</div>

		<div class="form-row">
			<label>Latitude</label>
			<input name="latitude" placeholder="latitude">
		</div>

		<div class="form-row">
			<label>Longitude</label>
			<input name="longitude" placeholder="longitude">
		</div>

		<div class="form-row" style="grid-column:1/3">
			<label>รายละเอียด</label>
			<textarea name="description" placeholder="รายละเอียด"></textarea>
		</div>

		<div style="grid-column:1/3;margin-top:6px">
			<button class="btn" name="add" type="submit">เพิ่มสถานที่</button>
		</div>
	</form>

	<hr>

	<h4>รายการ</h4>
	<div class="list-cards">
		<?php while ($p = $places->fetch_assoc()) : ?>
			<div class="card list-card" style="display:flex;gap:12px;align-items:center">
				<img src="<?php echo e($p['image'] ?: 'assets/img/place1.jpg'); ?>" alt="" style="width:96px;height:72px;object-fit:cover;border-radius:6px">
				<div style="flex:1">
					<strong><?php echo e($p['name']); ?></strong>
					<div style="color:var(--muted);font-size:0.9rem"><?php echo e($p['type_name']); ?></div>
				</div>
				<div>
					<a href="?delete=<?php echo $p['id']; ?>" onclick="return confirm('ลบ?')" style="color:#c0392b">ลบ</a>
				</div>
			</div>
		<?php endwhile; ?>
	</div>

</div>

<?php require '../includes/footer.php'; ?>