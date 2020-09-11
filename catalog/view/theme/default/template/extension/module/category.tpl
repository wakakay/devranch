<?php if (!$isHome) { ?>
  <div class="list-group">
    <?php foreach ($categories as $category) { ?>
      <?php if ($category['category_id'] == $category_id) { ?>
        <a href="<?php echo $category['href']; ?>" class="cell-title list-group-item active"><?php echo $category['name']; ?></a>
        <?php if ($category['children']) { ?>
          <?php foreach ($category['children'] as $child) { ?>
            <?php if ($child['category_id'] == $child_id) { ?>
              <a href="<?php echo $child['href']; ?>" class="list-group-item active">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
              <?php } else { ?>
              <a href="<?php echo $child['href']; ?>" class="list-group-item">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
            <?php } ?>
          <?php } ?>
        <?php } ?>
      <?php } else { ?>
        <a href="<?php echo $category['href']; ?>" class="cell-title list-group-item"><?php echo $category['name']; ?></a>
      <?php } ?>
    <?php } ?>
  </div>
<?php } else { ?>
  <div class="module-menu navbar" flex="dir:left">
    <h4 flex="main:center cross:center">
      <a href="<?php echo $categories[1]['href']; ?>"><?php echo $categories[1]['name']; ?></a>
    </h4>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <?php foreach ($categories[1]['children'] as $category) { ?>
        <li class="cell-path"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
<?php } ?>

