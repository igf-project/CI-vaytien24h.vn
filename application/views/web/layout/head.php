<!DOCTYPE html>
<html lang='vi'>
<head>
	<title><?= $page_title ?></title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<meta name="robots" content="index,follow" />
	<meta http-equiv="content-language" content="vi" />
	<meta name="keywords" content="<?= $page_keyword ?>" />
	<meta name="description" content="<?= $page_descript ?>" />

	<meta property="og:url"           content="<?= base_url(uri_string());?>" />
	<meta property="og:type"          content="website" />
	<meta property="og:title"         content="<?= $page_title ?>" />
	<meta property="og:description"   content="<?= $page_descript ?>" />
	<meta property="og:image"         content="<?= base_url().$page_image ?>" />

	<link href="<?= base_url();?>assets/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet">
	<link href="<?= base_url();?>assets/css/font-awesome.css" type="text/css" rel="stylesheet" media="all">
	<link href="<?= base_url();?>assets/css/swiper.min.css" rel="stylesheet">
	<link href="<?= base_url();?>assets/css/style.css" type="text/css" rel="stylesheet" media="all">
	<link href="<?= base_url();?>assets/css/style-responsive.css" type="text/css" rel="stylesheet">
	<link href="<?= base_url();?>assets/css/font-roboto.css" rel="stylesheet">
	<link href="<?= base_url();?>assets/css/drop-menu.css?v=1" rel="stylesheet">
	<script type="text/javascript" src='<?= base_url();?>assets/js/jquery-1.11.2.min.js'></script>
	<script type="text/javascript" src='<?= base_url();?>assets/bootstrap/js/bootstrap.min.js' async></script>
	<script type="text/javascript" src="<?php echo base_url();?>assets/js/swiper.min.js"></script>
	<script src="https://apis.google.com/js/platform.js" async defer></script>
</head>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.12';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<body>
	<div class="wrapper">