<h1>Dedicated server</h1>
{if $rebootdone == 1}
<i class="icon-ok-sign"></i>A request to reboot your server has been issued.
<script type="text/javascript">
	function redirect() {
		window.location='/dedicated/{{$serverid}}/';
	}
	var redirect_timer = setTimeout('redirect()','1000');
</script>
{else}
This page allows you to send a request to power cycle your server, your server will become unresponsive immediately and be online usually within a couple of minutes depending on your system. In some cases, Linux may force a diskchk and the boot may take longer.

<form method="post">
	<div style="clear:both; padding-left:10px; padding-top:10px;">
		<input type="checkbox" name="confirm" value="reboot"> Check this box to confirm that you understand your server will be powered down immediately for a power cycle.
	</div>
	
	<div style="clear:both; padding-left:220px; padding-top:10px;">
		<input type="submit" value="Issue Reboot" class="btn">
	</div>
</form>
{/if}