<section class="body">
	<header class="page-header">
		<h1><?php echo $tbl_event['title'] ?></h1>
	</header>
	<div id="path">
		<div class="container">
			<div class="box-breadcrumb">
				<ul class="breadcrumb">
					<li><a href="index.html" title="Trang chủ"><i class="fa fa-home" aria-hidden="true" style="font-size:18px"></i></a></li>
					<li><a href="<?php echo base_url()?>su-kien" title="Sự kiện">Sự kiện</a></li>
					<li><a href="<?php echo base_url()."su-kien/".$tbl_event['code'].".html" ?>"><?php echo $tbl_event['title'] ?></a></li>
				</ul>
			</div>
		</div>
	</div>
	<section id="page-body" class="container">
		<div class="row">
			<article class="col-md-8 aside-left">
				<ul class="list-social list-inline">
					<li><i class="fa fa-user" aria-hidden="true"></i><a href="#" title=""><?php echo $tbl_event['author'] ?></a></li>
					<li><i class="fa fa-calendar" aria-hidden="true"></i><span class="date"><?php echo $tbl_event['cdate'] ?></span></li>
					<li><i class="fa fa-folder-open" aria-hidden="true"></i><a href="<?php echo base_url()?>su-kien" title="Sự kiện">Sự kiện</a></li>
					<li><i class="fa fa-heart" aria-hidden="true"></i><a href="#" title=""><?php echo $tbl_event['views'] ?></a></li>
				</ul>
				<div id="imgCarousel" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<?php
						foreach ($tbl_event_images as $key => $item) {
							if($key==0){
								echo '<li data-target="#imgCarousel" data-slide-to="'.$key.'" class="active"></li>';
							}else{
								echo '<li data-target="#imgCarousel" data-slide-to="'.$key.'"></li>';
							}
						}
						?>
					</ol>
					<div class="carousel-inner">
						<?php
						foreach ($tbl_event_images as $key => $item) {
							if($key==0){
								echo '<div class="item active">
								<img src="'.base_url().$item['image'].'" alt="'.$item['title'].'">
								</div>';
							}else{
								echo '<div class="item">
								<img src="'.base_url().$item['image'].'" alt="'.$item['title'].'">
								</div>';
							}
						}
						?>
					</div>
					<a class="left carousel-control" href="#imgCarousel" data-slide="prev">
						<i class="fa fa-arrow-left" aria-hidden="true"></i>
					</a>
					<a class="right carousel-control" href="#imgCarousel" data-slide="next">
						<i class="fa fa-arrow-right" aria-hidden="true"></i>
					</a>
				</div>
				<br>
				<article class="content fulltext">
					<?php echo $tbl_event['content'] ?>
				</article>
			</article>
			<aside class="col-md-4">
				<div class="aside-right">
					<div class="layer-bg"></div>
					<div class="box-time">
						<ul id="box-event-time">
							<li><div id="days"></div>Days</li>
							<li><div id="hour"></div>Hour</li>
							<li><div id="minutes"></div>Minutes</li>
							<li><div id="seconds"></div>Seconds</li>
						</ul>
						<div id="main-day">
							<?php
							$monthNum  = $tbl_event['month'];
							$dateObj   = DateTime::createFromFormat('!m', $monthNum);
							$monthName = $dateObj->format('F');

							echo $tbl_event['date'].' '.$monthName.', '.$tbl_event['year']
							?>
							<!-- 23 Dec, 2017 - 31 Dec, 2017 -->
						</div>
					</div>
					<div class="box-social">
						<ul class="social-icons">
							<li><a class="rss" data-original-title="rss" href="javascript:void(0);"></a></li>
							<li><a class="facebook" data-original-title="facebook" href="javascript:void(0);"></a></li>
							<li><a class="twitter" data-original-title="twitter" href="javascript:void(0);"></a></li>
							<li><a class="googleplus" data-original-title="googleplus" href="javascript:void(0);"></a></li>
							<li><a class="youtube" data-original-title="youtube" href="javascript:void(0);"></a></li>
						</ul>
					</div>
					<div class="box-address">
						<ul>
							<?php
							foreach ($tbl_event_address as $item) {
								echo '<li><i class="fa fa-map-marker" aria-hidden="true"></i>'.$item['address'].'</li>';
							}
							?>
						</ul>
					</div>
					<div class="box-invitee">
						<div class="title">Khách mời</div>
						<div class="list">
							<?php
							foreach ($tbl_event_guest as $item) {
								echo '<div class="item">
								<img src="'.base_url().$item['image'].'" class="img-responsive" data-toggle="tooltip" title="'.$item['name'].'">
								</div>';
							}
							?>
						</div>
					</div>
				</div>
			</aside>
		</div>

		<aside class="box-relatedcontent">
			<h3 class="box-title">Bài viết liên quan</h3>
			<div class="row">
				<div class="col-md-3 item">
					<figure>
						<a href="lac-troi-ve-7-quan-pho-ngon-ve-ha-noi-chuan-vi-cho-ngay-chan-com.html" title="Lạc trôi về 7 quán phở ngon ở Hà Nội chuẩn vị cho ngày chán cơm" class="box-thumb">
							<img src="images/pho-ha-noi.jpg" atl="Lạc trôi về 7 quán phở ngon ở Hà Nội chuẩn vị cho ngày chán cơm" class="thumb img-responsive">
						</a>
						<figcaption>
							<p class="article-title"><a href="lac-troi-ve-7-quan-pho-ngon-ve-ha-noi-chuan-vi-cho-ngay-chan-com.html">Lạc trôi về 7 quán phở ngon ở Hà Nội chuẩn vị cho ngày chán cơm</a></p>
						</figcaption>
					</figure>
				</div>
				<div class="col-md-3 item">
					<figure>
						<a href="ha-noi-ngan-nam-van-hien.html" title="Hà Nội ngàn năm văn hiến" class="box-thumb">
							<img src="images/vanmieuquoctugiam.jpg" atl="Hà Nội ngàn năm văn hiến" class="thumb img-responsive">
						</a>
						<figcaption>
							<p class="article-title"><a href="ha-noi-ngan-nam-van-hien.html" title="Hà Nội ngàn năm văn hiến">Hà Nội ngàn năm văn hiến</a></p>
						</figcaption>
					</figure>
				</div>
				<div class="col-md-3 item">
					<figure>
						<a href="ha-noi-trong-toi-noi-hoi-ngo-cua-nhung-net-dep-binh-di-than-thuong-nhat.html" title="Hà Nội trong tôi- nơi hội ngộ của những nét đẹp bình dị, thân thương nhất" class="box-thumb">
							<img src="images/ganhhanghoa.jpg" atl="Hà Nội trong tôi- nơi hội ngộ của những nét đẹp bình dị, thân thương nhất" class="thumb img-responsive">
						</a>
						<figcaption>
							<p class="article-title"><a href="ha-noi-trong-toi-noi-hoi-ngo-cua-nhung-net-dep-binh-di-than-thuong-nhat.html" title="Hà Nội trong tôi- nơi hội ngộ của những nét đẹp bình dị, thân thương nhất">"Hà Nội trong tôi"- nơi hội ngộ của những nét đẹp bình dị, thân thương nhất</a></p>
						</figcaption>
					</figure>
				</div>
				<div class="col-md-3 item">
					<figure>
						<a href="van-hoa-tra-da-via-he-dat-ha-thanh.html" title="Văn hóa trà đá vỉa hè đất hà thành" class="box-thumb">
							<img src="images/tradaviahe.jpg" atl="Văn hóa trà đá vỉa hè đất hà thành" class="thumb img-responsive">
						</a>
						<figcaption>
							<p class="article-title"><a href="van-hoa-tra-da-via-he-dat-ha-thanh.html" title="Văn hóa trà đá vỉa hè đất hà thành">Văn hóa trà đá vỉa hè đất hà thành</a></p>
						</figcaption>
					</figure>
				</div>
			</div>
		</aside>
	</section>
</section>
<script type="text/javascript">
		// Set the date we're counting down to
		var countDownDate = new Date("<?php echo $tbl_event['month'].' '.$tbl_event['date'].', '.$tbl_event['year'].' '.$tbl_event['hour'].':0:0' ?>").getTime();

		// Update the count down every 1 second
		var x = setInterval(function() {

		// Get todays date and time
		var now = new Date().getTime();

		// Find the distance between now an the count down date
		var distance = countDownDate - now;
		console.log(distance);

		// Time calculations for days, hours, minutes and seconds
		var days = Math.floor(distance / (1000 * 60 * 60 * 24));
		var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
		var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
		var seconds = Math.floor((distance % (1000 * 60)) / 1000);

		// Display the result in the element with id="demo"
		document.getElementById("days").innerHTML = days;
		document.getElementById("hour").innerHTML = hours;
		document.getElementById("minutes").innerHTML = minutes;
		document.getElementById("seconds").innerHTML = seconds;

		// If the count down is finished, write some text 
		if (distance < 0) {
			clearInterval(x);
			document.getElementById("box-event-time").innerHTML = "";
			// document.getElementById("days").innerHTML = "EXPIRED";
			// document.getElementById("hour").innerHTML = "EXPIRED";
			// document.getElementById("minutes").innerHTML = "EXPIRED";
			// document.getElementById("seconds").innerHTML = "EXPIRED";
		}
	}, 1000);
</script>