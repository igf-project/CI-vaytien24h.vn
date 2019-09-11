<aside class="main-sidebar">
	<section class="sidebar">
		<div class="user-panel">
			<div class="pull-left image">
				<img src="<?php echo base_url()?>assets/admin/images/user2-160x160.jpg" class="img-circle user-image" alt="User Image">
			</div>
			<div class="pull-left info">
				<p><?php var_dump($USER_ADMIN) ?></p>
				<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
			</div>
		</div>
		<ul class="sidebar-menu">
			<li class="treeview">
				<a href="#">
					<i class="fa fa-newspaper-o"></i>
					<span>Tin tức</span>
					<i class="fa fa-angle-left pull-right"></i>
				</a>
				<ul class="treeview-menu">
					<li><a href="<?php echo base_url()?>admin/Post_group"><i class="fa fa-caret-right" aria-hidden="true"></i> Nhóm tin</a></li>
					<li><a href="<?php echo base_url()?>admin/Post"><i class="fa fa-caret-right" aria-hidden="true"></i> Tin tức</a></li>
				</ul>
			</li>
			<li class="treeview">
				<a href="<?php echo base_url()?>admin/slider">
					<i class="fa fa-sliders" aria-hidden="true"></i>
					<span>Banner slide</span>
				</a>
			</li>
			<li class="treeview">
				<a href="<?php echo base_url()?>admin/Feedback">
					<i class="fa fa-sliders" aria-hidden="true"></i>
					<span>Feedback</span>
				</a>
			</li>
			<li class="treeview">
				<a href="<?= base_url()?>admin/menu">
					<i class="fa fa-chain-broken" aria-hidden="true"></i>
					<span>Menu</span>
				</a>
			</li>
			<li class="treeview">
				<a href="#">
					<i class="fa fa-newspaper-o"></i>
					<span>Form đăng ký</span>
					<i class="fa fa-angle-left pull-right"></i>
				</a>
				<ul class="treeview-menu">
					<li><a href="<?php echo base_url()?>admin/Loan_registration"><i class="fa fa-caret-right" aria-hidden="true"></i>Đăng ký vay</a></li>
					<li><a href="<?php echo base_url()?>admin/Borrow_group"><i class="fa fa-caret-right" aria-hidden="true"></i>Hình thức vay</a></li>
					<li><a href="<?= base_url()?>admin/Field"><i class="fa fa-caret-right" aria-hidden="true"></i>Tùy biến form</a></li>
				</ul>
			</li>
			<li class="treeview">
				<a href="<?= base_url()?>admin/Module">
					<i class="fa fa-cubes" aria-hidden="true"></i>
					<span>Quản lý Module</span>
				</a>
			</li>
		</ul>
	</section>
</aside>
<!-- Begin Body -->
<div class="content-wrapper" style="padding-bottom: 50px;">
	<div class="page-content-wrapper">
		<div class="page-content">