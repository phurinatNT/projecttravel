<?php
require '../includes/auth.php';
require '../includes/db.php';
require '../includes/header.php';

if ($_SESSION['role'] !== 'admin') {
	header('Location: dashboard.php');
	exit();
}

if (isset($_GET['delete'])) {
	$id = (int)$_GET['delete'];
	$st = $conn->prepare('SELECT username FROM users WHERE id=? LIMIT 1');
	$st->bind_param('i', $id);
	$st->execute();
	$r = $st->get_result()->fetch_assoc();
	if ($r && $r['username'] !== 'admin') {
		$d = $conn->prepare('DELETE FROM users WHERE id=?');
		$d->bind_param('i', $id);
		$d->execute();
	}
}

$res = $conn->query('SELECT id,username,role FROM users');
?>

<div class="card">
	<h3>จัดการผู้ใช้</h3>
	<div style="overflow:auto">
		<table class="table-modern">
			<thead>
				<tr>
					<th>ID</th>
					<th>username</th>
					<th>role</th>
					<th>จัดการ</th>
				</tr>
			</thead>
			<tbody>
				<?php while ($u = $res->fetch_assoc()) : ?>
					<tr>
						<td><?php echo e($u['id']); ?></td>
						<td><?php echo e($u['username']); ?></td>
						<td><?php echo e($u['role']); ?></td>
						<td>
							<?php if ($u['username'] !== 'admin') : ?>
								<a href="?delete=<?php echo $u['id']; ?>" onclick="return confirm('ลบผู้ใช้?')" style="color:#c0392b">ลบ</a>
							<?php endif; ?>
						</td>
					</tr>
				<?php endwhile; ?>
			</tbody>
		</table>
	</div>
</div>

<?php require '../includes/footer.php'; ?>