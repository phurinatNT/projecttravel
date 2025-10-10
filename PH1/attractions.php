<?php
require 'includes/db.php';
require 'includes/header.php';
$q = isset($_GET['q']) ? $conn->real_escape_string($_GET['q']) : '';
$sql = 'SELECT p.*, t.name as type_name FROM places p LEFT JOIN place_types t ON p.type_id=t.id';
if($q){ $sql .= " WHERE p.name LIKE '%".$q."%' OR p.description LIKE '%".$q."%'"; }
$r = $conn->query($sql);
?>
<div class="card" data-aos="fade-up">
  <h3>สถานที่ทั้งหมด</h3>
  <?php if($r && $r->num_rows>0): while($p=$r->fetch_assoc()): ?>
    <div class="list-item">
      <img src="<?php echo e($p['image']?:'assets/img/place1.jpg'); ?>" alt="">
      <div>
        <h4><?php echo e($p['name']); ?> <small style="color:var(--muted)"><?php echo e($p['type_name']); ?></small></h4>
        <p><?php echo e(mb_substr($p['description'],0,220)); ?></p>
        <?php if($p['latitude'] && $p['longitude']): ?><p><a href="https://www.google.com/maps?q=<?php echo e($p['latitude']); ?>,<?php echo e($p['longitude']); ?>" target="_blank">ดูแผนที่</a></p><?php endif; ?>
      </div>
    </div>
  <?php endwhile; else: ?><p>ยังไม่มีข้อมูล</p><?php endif; ?>
</div>
<?php require 'includes/footer.php'; ?>