<!DOCTYPE html>
<html lang="en">
<head>
	<script>
		function PrintEmail(name) {
		var hostname = 'ycn-hosting.com';
		var at = '@';
		document.write ('<a href="mailto:'+name+at+hostname+'">'+name+at+hostname+'</a>');
	}
	</script>
	<script src="//www.ycn-hosting.com/jquery.min.js" type="text/javascript"></script>
	<script src="/js/jquery-ui-1.8.2.custom.min.js"></script>
	<link rel="stylesheet" href="/css/ycn/jquery-ui-1.8.2.custom.css" type="text/css">	<meta charset="utf-8">
	<title>{{$pagetitle}}</title>

	<meta name="description" content="">
	<meta name="author" content="Ben 'bashy' Sampson">

	<!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- Le style -->
	<link href="//cpanel.ycn-hosting.com/ycn.css" rel="stylesheet">

	<!-- Le favicon -->
	<link rel="shortcut icon" href="//cpanel.ycn-hosting.com/favicon.ico">

</head>
<body>

<div class="header">
	<a href="//ycn-hosting.com"><div class="logo"><span>YCN-Hosting.com</span></div></a>

	<div class="toolbar">

		<div class="currency">
			{{if $currency == "GB"}}
			Currency:
			<a class="blacktext" href="{{$requri}}&location=GB">&pound; <img src="//cpanel.ycn-hosting.com/img/gb.png" /></a>
			&nbsp;
			<a class="blacktext" href="{{$requri}}&location=EUR">&euro; <img src="//cpanel.ycn-hosting.com/img/eu.png" /></a>
			{{else}}
			Currency:
			<a class="blacktext" href="{{$requri}}&location=EUR">&euro; <img src="//cpanel.ycn-hosting.com/img/eu.png" /></a>
			&nbsp;
			<a class="blacktext" href="{{$requri}}&location=GB">&pound; <img src="//cpanel.ycn-hosting.com/img/gb.png" /></a>
			{{/if}}
		</div>

		<div class="panellinks m">
			<li><a href="https://cpanel.ycn-hosting.com/">Control Panel</a></li>
			<li><a href="https://cpanel.ycn-hosting.com/index.php?module=tickets">Support Tickets</a></li>
		</div>

	</div>

</div>

<div class="content clearfix">

<a href="https://www.ycn-hosting.com/?page=order&action=basket">
	<div class="basket">
		<div class="basket-inner">
			<font class="ls">Basket</font>
			<div style="height: 5px;"></div>
			<img src="//cpanel.ycn-hosting.com/img/shopping-basket.png" /> <b id="basketid">{{$basket}}</b>
		</div>
	</div>
</a>

<div class="nava m">

	<div class="mainmenu l">
		<li {{if $activepage == "home" }}class="active"{{/if}}><a href="https://www.ycn-hosting.com/">Home</a></li>
		<li {{if $activepage == "game_server" }}class="active"{{/if}}><a href="http://www.ycn-hosting.com/games/">Game Servers</a></li>
		<li {{if $activepage == "voice" }}class="active"{{/if}}><a href="https://www.ycn-hosting.com/order/voice/">Voice Servers</a></li>
		<li {{if $activepage == "website" }}class="active"{{/if}}><a href="https://www.ycn-hosting.com/order/website/">Web Hosting</a></li>
		<li {{if $activepage == "bouncer" }}class="active"{{/if}}><a href="https://www.ycn-hosting.com/order/bouncer/">BNCs</a></li>
	</div>

	<div class="sidemenu r">
		<li {{if $activepage == "news" }}class="active"{{/if}}><a href="?page=subpage&subpage=news">News</a></li>
		<li><a href="http://ycn-hosting.com/forum/">Forums</a></li>
		<li><a href="http://www.ycn-hosting.com/page/about/">About</a></li>
		<li><a href="http://www.ycn-hosting.com/page/contact/">Contact</a></li>
		<li><a href="http://www.ycn-hosting.com/page/sponsorships/">Sponsorship</a></li>
	</div>

</div>

<div class="featured-banner">
	<a href="https://www.ycn-hosting.com/?page=order&action=game_server"><img src="//cpanel.ycn-hosting.com/img/csgo2.jpg" /></a>
</div>

<div class="leftside" >
<div style="padding:5px;">
