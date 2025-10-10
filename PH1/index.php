<?php
require 'includes/db.php';
require 'includes/header.php';
// featured places & products
$places = $conn->query('SELECT p.*, t.name as type_name FROM places p LEFT JOIN place_types t ON p.type_id=t.id LIMIT 6');
$products = $conn->query('SELECT * FROM products LIMIT 6');
?>
<section class="hero">
  <div class="hero-left" data-aos="fade-right">
    <h2>เที่ยวอุดรธานี กับ PhurinatTour</h2>
    <p>ค้นพบสถานที่ท่องเที่ยว วัฒนธรรม และสินค้าชุมชนจากจังหวัดอุดรธานี</p>
    <div style="margin-top:14px"><a class="btn" href="attractions.php">ดูสถานที่แนะนำ</a></div>
    <div class="search-card">
      <form action="attractions.php" method="get" style="display:flex;gap:8px;flex-wrap:wrap">
        <input type="text" name="q" placeholder="ค้นหาสถานที่หรือคำสำคัญ..." style="flex:1;padding:10px;border-radius:8px;border:1px solid #eee">
        <button class="btn secondary" type="submit">ค้นหา</button>
      </form>
    </div>
  </div>
  <div class="hero-right" data-aos="fade-left">
    <img src="assets/img/banner.jpg" alt="banner" style="width:100%;height:100%;object-fit:cover">
  </div>
</section>

<div class="grid">
  <div>
    <div class="card" data-aos="fade-up">
      <div class="section-title"><h3>สถานที่แนะนำ</h3><a href="attractions.php" class="btn secondary">ดูทั้งหมด</a></div>
      <?php if($places): while($p=$places->fetch_assoc()): ?>
        <div class="list-item" data-aos="fade-up">
          <img src="<?php echo e($p['image']?:'assets/img/place1.jpg'); ?>" alt="">
          <div>
            <h4><?php echo e($p['name']); ?></h4>
            <p style="color:var(--muted)"><?php echo e(mb_substr($p['description'],0,120)); ?></p>
          </div>
        </div>
      <?php endwhile; endif; ?>
    </div>

    <div class="card" style="margin-top:16px" data-aos="fade-up">
      <div class="section-title"><h3>สินค้าชุมชน</h3><a href="products.php" class="btn secondary">ดูทั้งหมด</a></div>
      <?php if($products): while($it=$products->fetch_assoc()): ?>
        <div class="list-item" data-aos="fade-up">
          <img src="<?php echo e($it['image']?:'assets/img/product1.jpg'); ?>" alt="">
          <div>
            <h4><?php echo e($it['name']); ?></h4>
            <p style="color:var(--muted)"><?php echo e(mb_substr($it['description'],0,100)); ?></p>
          </div>
        </div>
      <?php endwhile; endif; ?>
    </div>
  </div>

  <aside>
    <div class="card" data-aos="fade-left">
      <h4>ข้อมูลจังหวัด</h4>
      <?php $r=$conn->query('SELECT * FROM province_info LIMIT 1'); if($r && $row=$r->fetch_assoc()): ?>
        <img src="<?php echo e($row['image']); ?>" style="width:100%;height:140px;object-fit:cover;border-radius:8px;margin-bottom:8px">
        <p><?php echo e(mb_substr($row['description'],0,200)); ?></p>
      <?php else: ?><p>ยังไม่มีข้อมูลจังหวัด</p><?php endif; ?>
    </div>

    <div class="card" style="margin-top:12px" data-aos="fade-left">
      <h4>ติดต่อ</h4>
      <p>เบอร์: 0x-xxx-xxxx<br>Email: 67040249104@udru.ac.th</p>
    </div>
  </aside>
</div>

<?php require 'includes/footer.php'; ?>