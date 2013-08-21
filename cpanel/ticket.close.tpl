<script type="text/javascript">
function redirect() {
	window.location="/tickets/";
}
var redirect_timer = setTimeout('redirect()','300');
</script>
<h1>Support Tickets</h1>
{if $nonexist == "1"}
<i class="icon-exclamation-sign"></i>This support ticket does not exist!
{else}
<i class="icon-info-sign"></i>Your support ticket has been closed
{/if}
