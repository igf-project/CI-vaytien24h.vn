<section class="body">
	<header class="page-header">
		<div class="container">
			<h1 class="block-title"><?= $result['title'] ?></h1>
		</div>
	</header>
	<div id="path">
		<div class="container">
			<div class="box-breadcrumb">
				<ul class="breadcrumb">
					<li><a href="<?php echo base_url()?>" title="Trang chủ"><i class="fa fa-home" aria-hidden="true" style="font-size:18px"></i></a></li>
					<li><a href="<?php echo base_url().'tin-tuc/'.$result['category']['code'] ?>" title="<?= $result['category']['name'] ?>"><?= $result['category']['name'] ?></a></li>
					<li><a href="<?php echo base_url().'tin-tuc/'.$result['code'].'.html' ?>" title="<?= $result['title'] ?>"><?= $result['title'] ?></a></li>
				</ul>
			</div>
		</div>
	</div>
	<section id="page-body" class="container page-post-detail">
		<div class="row">
			<article class="col-md-9">
				<div class="post-detail">
					<div class="list-social">
						<ul class="list-inline">
							<li>
								<span class="icon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
								<span class="date"><?= date("d/m/Y", strtotime($result['cdate'])) ?></span>
							</li>
							<li>
								<div class="fb-like" data-href="<?= base_url(uri_string()) ?>" data-layout="button" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
							</li>
							<li>
								<div class="g-plusone" data-size="tall" ... ></div>
							</li>
						</ul>
					</div>
					<div class="p-intro"><?= $result['intro'] ?></div>
					<?php
					if(count($result['related'])>0){
						echo '<div class="post-related">
						<ul class="list-related-news">';
						foreach ($result['related'] as $item) {
							echo'<li>
							<i class="fa fa-circle" aria-hidden="true"></i>
							<a href="'.base_url().'tin-tuc/'.$item['code'].'.html" title="'.$item['title'].'" class="name">'.$item['title'].'</a>
							</li>';
						}
						echo '</ul>
						</div>';
					}
					?>
					<div class="fulltext"><?= $result['fulltext'] ?></div>
				</div>
				<div class="clearfix"></div>
				<div class="box-comment">
					<div class="fb-comments" data-href="https://www.facebook.com/vayvontinchaptieudungbienhoadongnai/" data-width="100%" data-numposts="5"></div>
				</div>
			</article>
			<aside class="col-md-3">
				<aside class="box-module news">
					<div class="title">Tin nổi bật</div>
					<?php
					foreach ($listHot as $key => $item) {
						$link = base_url().'tin-tuc/'.$item['code'].'.html';
						$date = date('H:i d/m/Y', strtotime($item['cdate']));
						if($key==0){
							echo '<article class="item item-first">
							<a href="'.$link.'" title="'.$item['title'].'" class="box-thumb">
							<figure>
							<img src="'.base_url().$item['thumb'].'" class="thumb img-responsive">
							</figure>
							</a>
							<p class="article-title"><a href="'.$link.'" title="'.$item['title'].'">'.$item['title'].'</a></p>
							<div class="article-meta">
							<span class="article-publish"><i class="fa fa-calendar" aria-hidden="true"></i>'.$date.'</span>
							<div class="article-desc">'.$item['intro'].'</div>
							</div>
							</article>';
						}else{
							echo '<article class="item">
							<a href="'.$link.'" title="'.$item['title'].'" class="box-thumb">
							<figure>
							<img src="'.base_url().$item['thumb'].'" class="thumb img-responsive">
							</figure>
							</a>
							<p class="article-title"><a href="'.$link.'" title="'.$item['title'].'">'.$item['title'].'</a></p>
							<div class="article-meta">
							<span class="article-publish"><i class="fa fa-calendar" aria-hidden="true"></i>'.$date.'</span>
							</div>
							</article>';
						}
					}
					?>
				</aside>
			</aside>
		</div>
		<aside class="box-relatedcontent">
			<h3 class="box-title">Bài viết cùng chuyên mục</h3>
			<div class="row">
				<?php
				foreach ($posts_same_group as $item) {
					echo '
					<div class="col-md-3 item">
					<figure>
					<a href="'.base_url().'tin-tuc/'.$item['code'].'.html" title="'.$item['title'].'" class="box-thumb">
					<img src="'.base_url().$item['thumb'].'" atl="'.$item['title'].'" class="thumb img-responsive">
					</a>
					<figcaption>
					<p class="article-title"><a href="'.base_url().'tin-tuc/'.$item['code'].'.html" title="'.$item['title'].'">'.$item['title'].'</a></p>
					<div class="p-intro lab-hide">'.$item['intro'].'</div>
					</figcaption>
					</figure>
					</div>';
				}
				?>
			</div>
		</aside>
	</section>
</section>
