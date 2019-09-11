<div class="button-fix-right">
	<a href="<?= base_url() ?>dang-ky-vay" title="Đăng ký ngay" class="btn-fix-right"><span class="icon"><i class="fa fa-registered" aria-hidden="true"></i></span>Đăng ký ngay</a>
</div>
<footer id="site-footer" class="padding">
	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<div class="item-header">
					<img src="<?= base_url() ?>assets/images/root/logo.png" class="img-responsive">
				</div>
				<p><?= $config['intro'] ?></p>
				<div class="box-social">
					<ul class="social-icons">
						<li><a class="rss" data-original-title="rss" href="javascript:void(0);"></a></li>
						<li><a class="facebook" data-original-title="facebook" href="<?= $config['facebook'] ?>"></a></li>
						<li><a class="googleplus" data-original-title="googleplus" href="<?= $config['gplus'] ?>"></a></li>
						<li><a class="youtube" data-original-title="youtube" href="<?= $config['youtube'] ?>"></a></li>
						<li><a class="skype" data-original-title="skype" href="javascript:void(0);"></a></li>
					</ul>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="item-header">
					<div class="header-inner">Thông tin liên hệ</div>
				</div>
				<div class="content">
					<ul>
						<li><i class="fa fa-phone" aria-hidden="true"></i><a href="tel:" title="Số điện thoại"><?= $config['phone'] ?></a></li>
						<li><i class="fa fa-share" aria-hidden="true"></i><?= $config['email'] ?></li>
					</ul>
					<address><i class="fa fa-map-marker" aria-hidden="true"></i><?= $config['address'] ?></address>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="fb-page" data-href="https://www.facebook.com/vayvontinchaptieudungbienhoadongnai/" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/vayvontinchaptieudungbienhoadongnai/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/vayvontinchaptieudungbienhoadongnai/">Vay tiêu dùng tín chấp Biên Hoà Đồng Nai</a></blockquote></div>
			</div>
		</div>
	</div>
	<div class="copyright text-center">© 2018 Vaytien24h.vn . All rights reserved</div>
</footer>
<div id="back-top" style="display: block;">
	<a href="#" class="top" style="display: block;"><i class="fa fa-arrow-up fa-lg"></i></a>
</div>

<script type="text/javascript">
	function submitSearchForm(){
		$('#searchform').submit();
	}

	$(function () {
		$(window).scroll(function () {
			if ($(this).scrollTop() > 400) {
				$('#back-top').fadeIn();
			} else {
				$('#back-top').fadeOut();
			}
		});
		$('#back-top a').click(function () {
			$('body,html').animate({
				scrollTop: 0
			}, 800);
			return false;
		});
	});

	$(document).ready(function(){
		$('.dropdown .bulet-dropdown').click(function(){
			$(this).parent().find('.dropdown-menu').toggle();
			$(this).parent().toggleClass('nav-pos');
		})

		$('.search-click').click(function(){
			$('.show-search').css("display","block");
			$('#request').focus();
		})
		$('.close-search').click(function(){
			$('.show-search').css("display","none");
		})


		var swiper = new Swiper('#main-slide', {
			pagination: '#main-slide .swiper-pagination',
			nextButton: '#main-slide .swiper-button-next',
			prevButton: '#main-slide .swiper-button-prev',
			paginationClickable: true,
			spaceBetween: 0,
			centeredSlides: true,
			speed: 600,
			// autoplay: 4000,
            // loop: true,
            autoplayDisableOnInteraction: false
        });

		var swiper = new Swiper('#swiper-post', {
			pagination: '#swiper-post .swiper-pagination',
			paginationClickable: true,
			spaceBetween: 0,
			centeredSlides: true,
			speed: 600,
			// autoplay: 4000,
			loop: true,
			autoHeight: true,
			autoplayDisableOnInteraction: false
		});

		var swiper = new Swiper('#box-feedback .swiper-container', {
			pagination: '#box-feedback .swiper-pagination',
			paginationClickable: true,
			slidesPerView: 2,
			spaceBetween: 50,
			autoplay: 4000,
			breakpoints: {
				1024: {
					slidesPerView: 2,
					spaceBetween: 40
				},
				768: {
					slidesPerView: 1,
					spaceBetween: 30
				},
				640: {
					slidesPerView: 1,
					spaceBetween: 20
				},
				320: {
					slidesPerView: 1,
					spaceBetween: 10
				}
			}
		});

		var swiper = new Swiper('#box-service .swiper-container', {
			pagination: '#box-service .swiper-pagination',
			paginationClickable: true,
			slidesPerView: 7,
			spaceBetween: 10,
			autoplay: 4000,
			breakpoints: {
				1024: {
					slidesPerView: 5,
					spaceBetween: 40
				},
				768: {
					slidesPerView: 4,
					spaceBetween: 30
				},
				640: {
					slidesPerView: 3,
					spaceBetween: 20
				},
				320: {
					slidesPerView: 2,
					spaceBetween: 10
				}
			}
		});
	});

	/*Giúp hiển thị thẻ html5 trong tất cả các trình duyệt*/
	(function (){
		var els = [ 'section', 'article', 'hgroup', 'header', 'footer', 'nav', 'aside', 
		'figure', 'mark', 'time', 'ruby', 'rt', 'rp' ];
		for (var i=0; i<els.length; i++){
			document.createElement(els[i]);
		}
	})();
</script>
<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5ac218b14b401e45400e4435/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
</body>
</html>
