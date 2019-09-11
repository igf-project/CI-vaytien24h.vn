<!-- Slide Main -->
<section>
	<div id="main-slide" class="swiper-container">
		<div class="swiper-wrapper">
			<?php
			foreach ($slider as $value) {
				echo '<div class="swiper-slide"><img src="'.base_url().$value['image'].'" class="img-responsive" alt="slide1">
				<div class="content col-md-6 col-sm-6">
				<div class="name"></div>
				<div class="intro"></div>
				</div></div>';
			}
			?>
		</div>
		<div class="swiper-button-next arrow-right"><span class="arrow arrow-left"><img src="<?php echo base_url()?>assets/images/arrow-left.png"></span></div>
		<div class="swiper-button-prev arrow-left"><span class="arrow arrow-right"><img src="<?php echo base_url()?>assets/images/arrow-right.png"></span></div>
	</div>
</section>
<!-- End Slide Main -->
