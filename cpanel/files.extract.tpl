<h1>File Manager</h1>
{if $extracted == "1"}
	<i class="icon-ok-sign"></i>Your compressed file has been extracted
{else}
	<i class="icon-exclamation-sign"></i>This file can not be extracted
{/if}
<script type="text/javascript">
	function redirect() {
		window.location='/files{{$back}}';
	}
	var redirect_timer = setTimeout('redirect()','300');
</script>