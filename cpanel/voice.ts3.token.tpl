<h1>New Token</h1>
{if $error}
	<i class="icon-exclamation-sign"></i>This function is only possible on Teamspeak 3 servers
{else}
	<i class="icon-ok-sign"></i> A new token has been generated for your Teamspeak 3 server
{/if}
<script type="text/javascript">
	function redirect() {
		window.location='/voice/{{$service.voice_id}}/';
	}
	var redirect_timer = setTimeout('redirect()','1000');
</script>