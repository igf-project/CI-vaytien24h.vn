<section class="body">
	<header class="page-header">
		<h1 class="block-title">Sự kiện Hà Nội</h1>
	</header>
	<div id="path">
		<div class="container">
			<div class="box-breadcrumb">
				<ul class="breadcrumb">
					<li><a href="<?php echo base_url()?>" title="Trang chủ"><i class="fa fa-home" aria-hidden="true" style="font-size:18px"></i></a></li>
					<li><a href="<?php echo base_url()?>su-kien" title="Sự kiện">Sự kiện</a></li>
				</ul>
			</div>
		</div>
	</div>
	<section id="page-body" class="container page-block-even padding">
		<div class="row">
			<article class="col-md-9">
				<div class="block-even">
					<?php
					// print_r($result);
					// for ($i=0; $i < $count; $i++) { 
					// 	echo '<div class="item">
					// 	<figure>
					// 	<a href="'.base_url().'su-kien/'.$result[$i]['code'].'.html" title="'.$result[$i]['title'].'" class="box-thumb">
					// 	<img src="'.base_url().$result[$i]['image'].'" class="img-responsive">
					// 	</a>
					// 	<figcaption>
					// 	<div class="post-title">
					// 	<a href="'.base_url().'su-kien/'.$result[$i]['code'].'.html" title="'.$result[$i]['title'].'">'.$result[$i]['title'].'</a>
					// 	</div>';
					// 	$count_address = count($result[$i]['address']);
					// 	echo '<div class="post-address">';
					// 	for ($j=0; $j < $count_address; $j++) { 
					// 		echo $result[$i]['address'][$j]['address'];
					// 	}
					// 	echo '</div>';
					// 	echo '<div class="post-intro">'.$result[$i]['intro'].'</div>
					// 	</figcaption>
					// 	</figure>
					// 	<div class="post-date text-uppercase">
					// 	<p>'.$result[$i]['date'].'</p>Tháng '.$result[$i]['month'].'
					// 	</div>
					// 	</div>';
					// }
					foreach ($result as $item) {
						echo '<div class="item">
						<figure>
						<a href="'.base_url().'su-kien/'.$item['code'].'.html" title="'.$item['title'].'" class="box-thumb">
						<img src="'.base_url().$item['image'].'" class="img-responsive">
						</a>
						<figcaption>
						<div class="post-title">
						<a href="'.base_url().'su-kien/'.$item['code'].'.html" title="'.$item['title'].'">'.$item['title'].'</a>
						</div>';
						$count = count($item['address']);
						echo '<div class="post-address">';
						foreach ($item['address'] as $item_address) {
							echo $item_address['address'];
						}
						echo '</div>';
						echo '<div class="post-intro">'.$item['intro'].'</div>
						</figcaption>
						</figure>
						<div class="post-date text-uppercase">
						<p>'.$item['date'].'</p>Tháng '.$item['month'].'
						</div>
						</div>';
					}
					?>
				</div>
				<?php if (isset($links)) { ?>
				<?php echo $links ?>
				<?php } ?>
			</article>
			<aside class="col-md-3">
				<aside class="box-module news">
					<div class="title">Tin nổi bật</div>
					<article class="item item-first">
						<a href="" class="box-thumb">
							<figure>
								<img src="<?php echo base_url()?>assets/images/tethanoi.jpg" class="thumb img-responsive">
							</figure>
						</a>
						<p class="article-title"><a href="">Tết Hà Nội xưa và nay</a></p>
						<div class="article-meta">
							<span class="article-publish"><i class="fa fa-calendar" aria-hidden="true"></i>09:09 06/09/2017</span>
							<div class="article-desc">Nhắc đến Tết, nhiều người thường nghĩ tới Hà Nội, với không khí nhộn nhịp nhưng vẫn còn đó nét truyền thống của những ngày xưa cũ. Đó là các phiên chợ chỉ họp một năm một lần vào dịp Tết như chợ hoa Hàng Lược, chợ đồ cổ ở ngã 5 phố cổ... </div>
						</div>
					</article>
					<article class="item">
						<a href="" class="box-thumb">
							<figure>
								<img src="<?php echo base_url()?>assets/images/pho-co-ha-noi.jpg" class="thumb img-responsive">
							</figure>
						</a>
						<p class="article-title"><a href="">Tết Hà Nội xưa và nay</a></p>
						<div class="article-meta">
							<span class="article-publish"><i class="fa fa-calendar" aria-hidden="true"></i>09:09 06/09/2017</span>
						</div>
					</article>
					<article class="item">
						<a href="" class="box-thumb">
							<figure>
								<img src="<?php echo base_url()?>assets/images/pho-co-ha-noi.jpg" class="thumb img-responsive">
							</figure>
						</a>
						<p class="article-title"><a href="">Tết Hà Nội xưa và nay</a></p>
						<div class="article-meta">
							<span class="article-publish"><i class="fa fa-calendar" aria-hidden="true"></i>09:09 06/09/2017</span>
						</div>
					</article>
					<article class="item">
						<a href="" class="box-thumb">
							<figure>
								<img src="<?php echo base_url()?>assets/images/pho-co-ha-noi.jpg" class="thumb img-responsive">
							</figure>
						</a>
						<p class="article-title"><a href="">Tết Hà Nội xưa và nay</a></p>
						<div class="article-meta">
							<span class="article-publish"><i class="fa fa-calendar" aria-hidden="true"></i>09:09 06/09/2017</span>
						</div>
					</article>
					<article class="item">
						<a href="" class="box-thumb">
							<figure>
								<img src="<?php echo base_url()?>assets/images/pho-co-ha-noi.jpg" class="thumb img-responsive">
							</figure>
						</a>
						<p class="article-title"><a href="">Tết Hà Nội xưa và nay</a></p>
						<div class="article-meta">
							<span class="article-publish"><i class="fa fa-calendar" aria-hidden="true"></i>09:09 06/09/2017</span>
						</div>
					</article>
				</aside>
				<aside class="box-module tag">
					<div class="title">Tag</div>
					<ul>
						<li><a href="">Hồ Gươm</a></li>
						<li><a href="">Ẩm thực</a></li>
						<li><a href="">Cốm làng Vòng</a></li>
						<li><a href="">Bún đậu mắm tôm</a></li>
						<li><a href="">Phở Hà Nội</a></li>
						<li><a href="">Gốm Bát Tràng</a></li>
						<li><a href="">Làng Cổ Đường Lâm</a></li>
						<li><a href="">Trà đá vỉa hè</a></li>
					</ul>
				</aside>
			</aside>
		</div>
	</section>
</section>
