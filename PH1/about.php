<?php require 'includes/db.php'; require 'includes/header.php'; $r=$conn->query('SELECT * FROM province_info LIMIT 1'); ?>
<div class="card" data-aos="fade-up"><h3> เกี่ยวกับอุดรธานี</h3>
<?php if($r && $row=$r->fetch_assoc()): ?>
  <img src="<?php echo e($row['image']); ?>" style="width:100%;height:380px;object-fit:cover;border-radius:8px;margin-bottom:12px">
  <p><?php echo nl2br(e($row['description'])); ?></p>
<?php else: ?><p>ยังไม่มีข้อมูล</p><?php endif; ?>
</div>
<?php require 'includes/footer.php'; ?>