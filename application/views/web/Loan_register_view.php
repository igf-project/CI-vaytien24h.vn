<section class="body">
	<header class="page-header">
		<div class="container">
			<h1 class="block-title">Đăng ký vay</h1>
		</div>
	</header>
	<div id="path">
		<div class="container">
			<div class="box-breadcrumb">
				<ul class="breadcrumb">
					<li><a href="<?php echo base_url()?>" title="Trang chủ"><i class="fa fa-home" aria-hidden="true" style="font-size:18px"></i></a></li>
					<li>Đăng ký vay</li>
				</ul>
			</div>
		</div>
	</div>
	<section id="page-body" class="container page-contact padding" style="padding-top: 0">
		<div class="col-md-4 col-md-offset-4">
			<div class="register-form">
				<form name="" id="register-form" method="post" action="<?= base_url() ?>dang-ky-vay/register" class="wpcf7-form">
					<div class="register-title">ĐĂNG KÝ VAY TÍN CHẤP NGÂN HÀNG</div>
					<div class="register-text">
						<table>
							<tbody>
								<tr>
									<td>
										<label>Họ &amp; tên (<span class="red">*</span>)</label><br>
										<input type="text" name="name" value="" required=""  maxlength="60" class="form-control" placeholder="Full name">
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
										<input type="tel" name="tel" value="" required="" maxlength="15" class="form-control" placeholder="Phone number">
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
										<select name="reg[province]" class="form-control">
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
										<input type="submit" value="GỬI ĐĂNG KÝ" name="submit" class="btn btn-default">
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<input type="hidden" name="md" value="">
				</form>
			</div>
		</div>
	</section>
</section>
