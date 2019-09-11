<!-- Navigation Bar -->
<nav class="navbar" data-spy="affix" data-offset-top="180" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#wrapper-mainmenu">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<?php echo base_url();?>"><img src="<?php echo base_url();?>assets/images/pando.png" class="logo img-responsive" title="trang chủ"></a>
		</div>
		<div id="wrapper-mainmenu" class="collapse navbar-collapse">
			<ul class="nav navbar-nav main-menu">
				<li><a href="<?php echo base_url();?>">Trang chủ</a></li>
				<li><a href="about.html">Giới thiệu</a></li>
				<li>
					<a href="#">Thông tin</a>
					<ul class="sub-menu">
						<li><a href="fasttrackse.html">FasttrackSE</a></li>
						<li><a href="profile.html">Thông tin người làm dự án</a></li>
					</ul>
				</li>
				<li>
					<a href="du-lich.html">Du lịch</a>
					<ul class="sub-menu">
						<li><a href="dia-diem-an-uong.html">Địa điểm ăn uống</a></li>
					</ul>
				</li>
				<li>
					<a href="<?php echo base_url()?>su-kien">Sự kiện</a>
					<ul class="sub-menu">
						<li><a href="<?php echo base_url()?>calendar">Calendar</a></li>
					</ul>
				</li>
				<li><a href="<?php echo base_url()?>thu-vien-anh">Thư viện ảnh</a></li>
			</ul>
			<div id="top-search">
				<a href="javascript:void(0);" class="search-click"><i class="fa fa-search" aria-hidden="true"></i></a>
				<div class="show-search">
					<form role="search" id="searchform" method="get" action="">
						<input type="text" class="search-input" name="q" id="request" placeholder="Nhập từ khóa tìm kiếm rồi nhấn Enter">
					</form>
					<a href="javascript:void(0);" class="close-search"><i class="fa fa-times" aria-hidden="true"></i></a>
				</div>
			</div>
		</div><!--/.nav-collapse -->
	</div>
</nav>
<!-- End Navigation Bar -->