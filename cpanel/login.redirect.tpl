<h1>Login Successful</h1>
You are now being redirected to the requested page

<script type="text/javascript">
	function redirect() {
		window.location='{{$loginredirect}}';
	}
	var redirect_timer = setTimeout('redirect()','100');
</script>