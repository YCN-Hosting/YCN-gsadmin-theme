<h1>Messages</h1>
{if $nonexist == "1"}
	<script type="text/javascript">
	function redirect() {
		window.location="/messages/";
	}
	var redirect_timer = setTimeout('redirect()','300');
	</script>
	<i class="icon-exclamation-sign"></i>This message does not exist!
{else}
	<div class="normal_field">
		<div class="label" style="width:100px; text-align:left; font-weight:bold;"><i class="icon-envelope" style="margin-top:2px;"></i>Subject </div>
		<div class="input" style="padding-top:5px;">{{$message.subject}}</div>
	</div>
	<div class="normal_field">
		<div class="label" style="width:100px; text-align:left; font-weight:bold;"><i class="icon-time" style="margin-top:2px;"></i>Date Posted </div>
		<div class="input"  style="padding-top:5px;">{{$message.unix_date_posted|date_format:"H:i d/m/Y"}}</div>
		<div style="clear:both"></div>
	</div>
	<br/>
	<div class="messagebox">{{$message.message|nl2br}}</div>
{/if}