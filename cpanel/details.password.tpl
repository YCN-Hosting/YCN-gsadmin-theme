<h1>Change Password</h1>
{if $success == "true"}
	Your password has been changed successfully.
	<script type="text/javascript">
		function redirect() {
			window.location='/account/';
		}
		var redirect_timer = setTimeout('redirect()','500');
	</script>
{else}
	{if $incorrectpass == "true"}
	<i class="icon-exclamation-sign"></i> Your current password is incorrect</br>
	{/if}
	{if $mismatch == "true"}
	<i class="icon-exclamation-sign"></i> The new passwords do not match</br>
	{/if}
	{if $invalidpass == "true"}
	<i class="icon-exclamation-sign"></i> Your new password must be 6 or more characters long</br>
	{/if}
	Here you can change the password for your user on YCN. This will also alter your FTP password.<br/></br>

	<form method="post" action="/account/password/">
		<div class="normal_field">
			<div class="label">Current Password :</div>
			<div class="input">
				<input type="password" name="current" size="50"/>
			</div>
		</div>

		<div class="normal_field">
			<div class="label">New Password :</div>
			<div class="input">
				<input type="password" name="new" size="50"/>
			</div>
		</div>

		<div class="normal_field">
			<div class="label">Confirm New Password :</div>
			<div class="input">
				<input type="password" name="newconfirm" size="50"/>
			</div>
		</div>
		
		<div class="normal_field">
			<div class="label"></div>
			<input type="submit" value="Update Password" class="btn" />
		</div>
	</form>
{/if}