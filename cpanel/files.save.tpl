<h1>File Manager</h1>
<i class="icon-ok-sign"></i>Your file has been modified and saved
<script type="text/javascript">
	function redirect() {
		window.location='{if $redirect}/{{$redirect}}{else}/files{{$path}}/{/if}';
	}
	var redirect_timer = setTimeout('redirect()','1000');
</script>