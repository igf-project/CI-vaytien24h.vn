<section class="body">
	<header class="page-header">
		<div class="container">
			<h1 class="block-title">Cảm ơn quý khách !</h1>
		</div>
	</header>
	<div id="path">
		<div class="container">
			<div class="box-breadcrumb">
				<ul class="breadcrumb">
					<li><a href="<?php echo base_url()?>" title="Trang chủ"><i class="fa fa-home" aria-hidden="true" style="font-size:18px"></i></a></li>
					<li>Cảm ơn</li>
				</ul>
			</div>
		</div>
	</div>
	<section id="page-body" class="container page-contact padding">
		<div class="box-contact">
			<?php
			if (isset($success_message)) {
				echo $success_message;
				echo '<p>Cám ơn Quý Khách hàng đã quan tâm đến dịch vụ cho vay tín dụng của <span class="red">Vaytien24.vn</span>. Tư vấn viên của chúng tôi sẽ liên hệ lại cho bạn để xác nhận trong thời gian sớm nhất.</p><br>';
			}
			if (isset($error_message)) {
				echo $error_message;
				echo '<p>Đã có lỗi trong quá trình xử lý vui lòng thử lại hoặc liên hệ trực tiếp với chúng tôi theo số điện thoại <span style="color: red; font-size:16px; font-weight:500;">'.$page_phone.'</span></p><br>';
			}
			?>
			
			<div class="clearfix"></div>
			<div class="text-center">
				<a class="btn btn-success" href="<?= base_url()?>">Quay trở về trang chủ.</a><br/>
			</div>
		</div>
	</section>
</section>
