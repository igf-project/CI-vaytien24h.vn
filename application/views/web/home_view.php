<?php
if(count($service) > 0){
	?>
	<section id="box-service" class="container padding service">
		<h2>Dịch vụ vay của<span class="red">Vaynhanh24h.vn</span></h2>
		<div class="region-inner">
			<div class="swiper-container swiper-container-horizontal">
				<div class="swiper-wrapper">
					<?php
					foreach ($service['post_cate'] as $item) {
						echo '<div class="swiper-slide">
						<div class="item">
						<a href="'.base_url().'tin-tuc/'.$item['code'].'.html" title="'.$item['title'].'">
						<figure>
						<span class="thumb"><img src="'.base_url().$item['thumb'].'" alt="'.$item['title'].'"></span>
						<figcaption>'.$item['title'].'</figcaption>
						</figure>
						</a>
						</div>
						</div>';
					}
					?>
				</div>
				<div class="swiper-pagination"></div>
			</div>
		</div>
	</section>
	<?php
}
?>
<?php
$number = count($box2['post_cate']);
echo '<section id="egion-header-second" class="padding">
<div class="tm-card bg-white py-6">
<div class="container">
<h2 class="tm-card__heading text-center mb-6">
'.$box2['name'].'<span class="red"> vaytien24h.vn</span>
</h2>
<div class="tm-card__body tm-steps2">
<div class="row justify-content-center">';

for ($i=0; $i < $number; $i++) { 
	$step = $box2['post_cate'][$i];
	echo '<div class="tm-steps2__item col col-12 col-sm-6 col-lg-3 col-xl-auto w-xl-20 text-center fs-14 mb-5 mb-xl-0">
	<div class="tm-steps2__thumb mb-2 mx-auto">
	<figure>
	<a href="'.base_url().'tin-tuc/'.$step['code'].'.html" title="'.$step['title'].'">
	<img src="'.base_url().$step['thumb'].'" class="img-responsive" alt="'.$step['title'].'">
	</a>
	</figure>
	</div>
	<h3 class="tm-steps2__title fw-4 text-uppercase fs-14 mb-1">
	<a class="tm-steps2__btn btn fw-6" href="'.base_url().'tin-tuc/'.$step['code'].'.html" title="'.$step['title'].'">'.$step['title'].'</a>
	</h3>
	<p class="mb-0 px-xl-3">'.$step['intro'].'</p>
	</div>';
}
echo '</div>
</div>
</div>
</div>
</section>';
?>

<div id="site-body" class="body">
	<section class="padding bg-gray-lightest">
		<div class="container">
			<div class="col-md-8">
				<div class="row">
					<div class="col-md-7">
						<div id="swiper-post" class="swiper-container">
							<div class="swiper-wrapper">
								<?php
								$list_post = $news['post_cate'];
								foreach ($list_post as $key => $item) {
									if($key<3){
										echo '<div class="swiper-slide">
										<div class="post big-item text-left">
										<figure>
										<div class="fig-header">
										<a href="'.base_url().'tin-tuc/'.$item['code'].'.html" title="'.$item['title'].'">
										<img src="'.base_url().$item['thumb'].'" alt="'.$item['title'].'" class="img-responsive">
										</a>
										<a href="'.base_url().'tin-tuc/'.$item['code'].'.html" title="'.$item['title'].'" class="title">'.$item['title'].'</a>
										</div>
										<figcaption>
										<p class="p-intro">'.$item['intro'].'</p>
										</figcaption>
										</figure>
										</div>
										</div>';
									}
								}
								?>
							</div>
							<div class="swiper-pagination"></div>
						</div>
					</div>
					<div class="col-md-5 asside-right">
						<div class="asside-title"><?= $news['name'] ?></div>
						<?php
						$list_post = $news['post_cate'];
						foreach ($list_post as $key => $post) {
							if($key==0) continue;
							$first = $key==1 ? 'first' : '';
							echo '<div class="post item '.$first.'">
							<a href="'.base_url().'tin-tuc/'.$post['code'].'.html" title="'.$post['title'].'" class="thumb lab-hide"><img src="'.base_url().$post['thumb'].'" alt="'.$post['title'].'" class="img-responsive"></a>
							<a href="'.base_url().'tin-tuc/'.$post['code'].'.html" title="'.$post['title'].'" class="title">'.$post['title'].'</a>
							<div class="p-intro">'.$post['intro'].'</div>
							</div>';
						}
						?>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="register-form">
					<form name="" id="register-form" method="post" action="<?= base_url() ?>dang-ky-vay/register" class="wpcf7-form">
						<div class="register-title">ĐĂNG KÝ VAY TÍN CHẤP NGÂN HÀNG</div>
						<div class="register-text">
							<table>
								<tbody>
									<tr>
										<td>
											<label>Họ &amp; tên (<span class="red">*</span>)</label><br>
											<input type="text" name="fullname" value="" required=""  maxlength="60" class="form-control" placeholder="Full name">
										</td>
									</tr>
									<tr>
										<td>
											<label>CMTND(<span class="red">*</span>)</label><br>
											<input type="text" name="cmtnd" value="" required=""  maxlength="20" class="form-control" placeholder="Chứng minh thư nhân dân">
										</td>
									</tr>
									<tr>
										<td>
											<label>Số điện thoại (<span class="red">*</span>)</label><br>
											<input type="tel" name="phone" value="" required="" maxlength="15" class="form-control" placeholder="Phone number">
										</td>
									</tr>
									<tr>
										<td>
											<label>Địa chỉ (<span class="red">*</span>)</label><br>
											<input type="text" name="address" required="" value="" maxlength="150" class="form-control" placeholder="Address">
										</td>
									</tr>
									<tr>
										<td>
											<label>Tỉnh / TP</label><br>
											<select name="province" class="form-control">
												<optgroup label="Miền Nam">
													<option value="TP Hồ Chí Minh">TP Hồ Chí Minh</option>
													<option value="Bình Dương">Bình Dương</option>
													<option value="Đồng Nai">Đồng Nai</option>
													<option value="Vũng Tàu">Vũng Tàu</option>
													<option value="Long An">Long An</option>
													<option value="Tây Ninh">Tây Ninh</option>
													<option value="Cần Thơ">Cần Thơ</option>
													<option value="An Giang">An Giang</option>
													<option value="Kiên Giang">Kiên Giang</option>
													<option value="Tiền Giang">Tiền Giang</option>
													<option value="Đồng Tháp">Đồng Tháp</option>
													<option value="Vĩnh Long">Vĩnh Long</option>
													<option value="Cà Mau">Cà Mau</option>
												</optgroup>
												<optgroup label="Miền Bắc">
													<option value="Hà Nội">Hà Nội</option>
													<option value="Hải Phòng">Hải Phòng</option>
													<option value="Bắc Ninh">Bắc Ninh</option>
													<option value="Vĩnh Phúc">Vĩnh Phúc</option>
												</optgroup>
												<optgroup label="Miền Trung">
													<option value="Đà Nẵng">Đà Nẵng</option>
													<option value="Thừa Thiên Huế">Thừa Thiên Huế</option>
													<option value="Quảng Nam">Quảng Nam</option>
													<option value="Quảng Ngãi">Quảng Ngãi</option>
													<option value="Khánh Hòa">Khánh Hòa</option>
												</optgroup>
											</select>
										</td>
									</tr>
									<tr>
										<td>
											<label>Hình thức vay</label><br>
											<select name="type" class="form-control">
												<?php
												foreach ($borrow_group as $key => $value) {
													echo '<option value="'.$value['id'].'">'.$value['name'].'</option>';
												}
												?>
											</select>
										</td>
									</tr>
									<?php
									foreach ($field as $item) {
										if($item['require'] == 1){
											$required = 'required';
										}else{
											$required = '';
										}
										echo '<tr>
										<td>
										<label>'.$item['name'].'</label><br>
										<input type="'.$item['type'].'" name="'.$item['code'].'" value="" maxlength="150" class="form-control" placeholder="'.$item['intro'].'" '.$required.'>
										</td>
										</tr>';
									}
									?>
									<tr>
										<td class="text-center"><br/>
											<input type="submit" value="GỬI ĐĂNG KÝ" name="reg[submit]" class="btn btn-default">
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<input type="hidden" name="md" value="">
					</form>
				</div>
			</div>
		</div>
	</section>

	<section id="box-feedback" class="padding">
		<div class="container">
			<h2>Cảm nhận về <span class="red">Vaynhanh24h.vn</span></h2>
			<div class="swiper-container swiper-container-horizontal">
				<div class="swiper-wrapper">
					<?php
					foreach ($feedback as $item) {
						echo '<div class="swiper-slide">
						<div class="item">
						<img src="'.base_url().$item['thumb'].'" class="img-responsive thumb-avatar" alt="'.$item['name'].'">
						<div class="content">
						<p><i class="fa fa-quote-left" aria-hidden="true"></i>'.$item['content'].'</p>
						<p class="txt-author"><span class="author">'.$item['name'].'</span> - '.$item['intro'].'</p>
						</div>
						</div>
						</div>';
					}
					?>
				</div>
				<div class="swiper-pagination"></div>
			</div>
		</div>
	</section>

	<div id="giapha_faq" class="padding bg-gray-lightest">
		<div class="container">
			<h2 class="title" title="Những câu hỏi thường gặp">Những câu hỏi thường gặp</h2>
			<?php
			$number = count($box5['post_cate']);
			for ($i=0; $i < $number; $i++) { 
				echo '<div class="item">
				<a href="'.base_url().'tin-tuc/'.$box5['post_cate'][$i]['code'].'.html" title="'.$box5['post_cate'][$i]['title'].'">+ '.$box5['post_cate'][$i]['title'].'</a>
				</div>';
			}
			?>
		</div>
	</div>
</div>
