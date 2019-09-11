<!-- Navigation Bar -->
<nav>
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<?= base_url() ?>"><img src="<?= base_url();?>assets/images/root/logo.png"></a>
		</div>
		<div id="navbar" class="navbar-collapse collapse menu main-menu">
			<ul class='nav navbar-nav main-menu'>
				<?php
				foreach ($menu as $key => $item) {
					$num_child = count($item['child']);
					if($num_child>0){
						echo '<li class="dropdown">';
						echo '<a href="'.$item['url'].'" class="dropdown-toggle" role="button" aria-haspopup="true"  aria-expanded="false">'.$item['title'].'</a>';
						echo '<span class="bulet-dropdown"></span>';
						echo '<ul class="sub-menu dropdown-menu">';
						foreach ($item['child'] as $child) {
							echo '<li><a href="'.$child['url'].'">'.$child['title'].'</a></li>';
						}
						echo '</ul>';
						echo '</li>';
					}else{
						echo '<li>';
						echo '<a href="'.$item['url'].'" title="'.$item['title'].'">'.$item['title'].'</a>';
						echo '</li>';
					}
				}
				?>
			</ul>
			<div id="top-search" class="m-hide">
				<a href="javascript:void(0);" class="search-click"><i class="fa fa-search" aria-hidden="true"></i></a>
				<div class="show-search" style="display: none;">
					<form role="search" id="searchform" method="get" action="<?= base_url() ?>tim-kiem">
						<input type="text" class="search-input" name="q" id="request" placeholder="Nhập từ khóa tìm kiếm rồi nhấn Enter">
					</form>
					<a href="javascript:void(0);" class="close-search"><i class="fa fa-times" aria-hidden="true"></i></a>
				</div>
			</div>
			<div class="m-show">
				<form role="search" id="searchform" method="get" action="<?= base_url() ?>tim-kiem/">
					<div class="input-group">
						<input type="text" class="search-input form-control" name="q" id="request" placeholder="Nhập từ khóa tìm kiếm">
						<span onclick="submitSearchForm()" class="input-group-addon"><i class="glyphicon glyphicon-search
							"></i></span>
						</div>
						
					</form>
				</div>
			</div>
		</div>
	</nav>
	<!-- End Navigation Bar -->
</header>
<!-- End Header -->