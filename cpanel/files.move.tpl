{if $moved == true}
<h1>File Manager</h1>
<i class="icon-ok-sign"></i>Your file has been moved

<script type="text/javascript">
	function redirect() {
		window.location='{if $redirect}{{$redirect}}{else}/files{{$back}}/{/if}';
	}
	var redirect_timer = setTimeout('redirect()','300');
</script>
{else}
<h1>File Manager</h1>
<form method="POST">
	<div class="normal_field">
		<div class="label">Old Path :</div>
		<div class="input">
			<input type="text" name="from" size="50" value="{{$path}}"/>
		</div>
	</div>
	<div class="normal_field">
		<div class="label">New Path :</div>
		<div class="input">
			<input type="text" name="to" size="50" value="{{$path}}"/>
		</div>
	</div>

	<div class="normal_field">
		<div class="label"></div>
		<div class="input">
			<button class="submit btn" type="submit">Move</button>
		</div>
	</div>
</form>
{/if}