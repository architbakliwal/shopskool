<div class="box category">
	<div class="box-heading"><h3><span>Partnered Schools</span></h3></div>
	<div class="box-content">
		<?php foreach ($categories as $category) { ?>
			<div class="col-lg-4 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="<?php echo $category['href']; ?>">
                    <img class="img-responsive" src="<?php echo $category['image']; ?>" alt="<?php echo $category['name']; ?>">
                </a>
                <a href="<?php echo $category['href']; ?>"><h3><?php echo $category['name']; ?></h3></a>
                <p>A small descrption of school and location.</p>
            </div>
        <?php } ?>
		<!-- <ul class="list-group">
		  <?php foreach ($categories as $category) { ?>
		  <li <?php if ($category['children']) { ?> class="hadchild" <?php } ?>>
		  <a href="<?php echo $category['href']; ?>" class="list-group-item <?php if ($category['category_id'] == $category_id){ ?> active <?php } ?>"><img src="<?php echo $category['image']; ?>"><span><?php echo $category['name']; ?></span></a>
		  <?php if ($category['children']) { ?>
		  <span class="button-view <?php if ($category['category_id'] == $category_id){ ?> ttopen <?php } else { ?> ttclose <?php } ?> ">view</span>
		  <ul <?php if ($category['category_id'] == $category_id){ ?>  style="display: block;"  <?php } else { ?> style="display: none;" <?php } ?>>
		  <?php foreach ($category['children'] as $child) { ?>
			<?php if ($child['category_id'] == $child_id) { ?>
				<li><a href="<?php echo $child['href']; ?>" class="list-group-item active"><img src="<?php echo $child['image']; ?>"><span><?php echo $child['name']; ?></span></a></li>
			<?php } else { ?>
				<li><a href="<?php echo $child['href']; ?>" class="list-group-item"><img src="<?php echo $child['image']; ?>"><span><?php echo $child['name']; ?></span></a></li>
			<?php } ?>
		  <?php } ?>
		  </ul>
		  <?php } ?>
		  </li>
		  <?php } ?>
		</ul> -->
	</div>
</div>
<script type="text/javascript">
	
	$(document).ready(function(){
		$('span.button-view').click(function() {
		if ($(this).hasClass('ttopen')) {varche = true} else {varche = false};
		if(varche == false){
			$(this).addClass("ttopen");
			$(this).removeClass("ttclose");
			$(this).parent().find('ul').slideDown();
			varche = true;
		} else 
		{	
			$(this).removeClass("ttopen");
			$(this).addClass("ttclose");
			$(this).parent().find('ul').slideUp();
			varche = false;
		}
		});
	});
	
</script>

