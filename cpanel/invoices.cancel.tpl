<h1>Cancel Invoice</h1>
{if $error == "1"}
	<i class="icon-exclamation-sign"></i>This Invoice does not exist
{else if $error == "2"}
	<i class="icon-exclamation-sign"></i>This Invoice can not be cancelled
{else}
	<i class="icon-ok-sign"></i>Your invoice has been cancelled
{/if}
<script type="text/javascript">
	function redirect() {
		window.location='?module=billing&action=invoices';
	}
	var redirect_timer = setTimeout('redirect()','1000');
</script>