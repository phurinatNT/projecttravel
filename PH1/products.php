<?php
require 'includes/db.php';
require 'includes/header.php';
$r = $conn->query('SELECT * FROM products');
?>
<div class="card" data-aos="fade-up">
  <h3>สินค้าชุมชน</h3>
  <?php if($r && $r->num_rows>0): while($p=$r->fetch_assoc()): ?>
    <div class="list-item">
      <img src="<?php echo e($p['image']?:'assets/img/product1.jpg'); ?>" alt="">
      <div>
        <h4><?php echo e($p['name']); ?></h4>
        <p><?php echo e(mb_substr($p['description'],0,180)); ?></p>
        <p style="font-weight:700;color:var(--accent)"><?php echo e($p['price']); ?> บาท</p>
      </div>
    </div>
  <?php endwhile; else: ?><p>ยังไม่มีสินค้า</p><?php endif; ?>
</div>
<?php require 'includes/footer.php'; ?>