<script type="text/javascript">
function redirect() {
{if $nonexist == "1"}
	window.location="/tickets/";
{else}
	window.location="/tickets/view/{{$ticket_id}}/";
{/if}
}
var redirect_timer = setTimeout('redirect()','300');
</script>
<h1>Support Tickets</h1>
{if $nonexist == "1"}
<i class="icon-exclamation-sign"></i>This support ticket does not exist!
{else}
<i class="icon-info-sign"></i>Your reply to this support ticket has been posted
{/if}