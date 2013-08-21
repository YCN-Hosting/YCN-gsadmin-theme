<h1>Make Payment</h1>
Your invoice has been generated, You are now being redirected to our payment system. If you are not redirected, click <a href="https://www.ycn-hosting.com/?page=payment&invoice_id={{$invoiceid}}">here</a>
<script type="text/javascript">
	function redirect() {
		window.location='https://www.ycn-hosting.com/?page=payment&invoice_id={{$invoiceid}}';
	}
	var redirect_timer = setTimeout('redirect()','500');
</script>