<h1>Edit Sub-User {{$subuser.username}}</h1>
<i class="icon-screenshot"></i><b>{{$gsoutput.0}}</b> : {{$gsoutput.1}}
<br/><br/>

<form method="post">
	<input type="hidden" name="send" value="1">

	<table class="table table-striped">
		{if $allow_permissions|strpos:"V" !== false}
			<tr>
				<td><i class="icon-eye-open" style="margin-top:1px;"></i><b>View</b></td>
				<td><input name="V" type="checkbox" value="1" {if $permissions|strpos:"V" !== false}checked="checked"{/if}></td>
				<td>Shows the service details on the cpanel</td>
			</tr>
		{/if}

		{if $allow_permissions|strpos:"F" !== false}
			<tr>
				<td><i class="icon-folder-open" style="margin-top:1px;"></i><b>File</b></td>
				<td><input name="F" type="checkbox" value="1" {if $permissions|strpos:"F" !== false}checked="checked"{/if}></td>
				<td>Access the service files through File Manager or FTP</td>
			</tr>
		{/if}

		{if $allow_permissions|strpos:"S" !== false}
			<tr>
				<td><i class="icon-play" style="margin-top:1px;"></i><b>Start</b></td>
				<td><input name="S" type="checkbox" value="1" {if $permissions|strpos:"S" !== false}checked="checked"{/if}></td>
				<td>Start and Stop the service</td>
			</tr>
		{/if}

		{if $allow_permissions|strpos:"C" !== false}
			<tr>
				<td><i class="icon-cog" style="margin-top:1px;"></i><b>Command</b></td>
				<td><input name="C" type="checkbox" value="1" {if $permissions|strpos:"C" !== false}checked="checked"{/if}></td>
				<td>Edit the command line of the service</td>
			</tr>
		{/if}

		{if $allow_permissions|strpos:"I" !== false}
			<tr>
				<td><i class="icon-retweet" style="margin-top:1px;"></i><b>Install</b></td>
				<td><input name="I" type="checkbox" value="1" {if $permissions|strpos:"I" !== false}checked="checked"{/if}></td>
				<td>Install mods/versions/upgrades to the service</td>
			</tr>
		{/if}
	</table>

	<div class="normal_field">
		<div class="label"></div>
		<div class="input input-prepend">
			<input type="submit" class="submit btn" value="Set Permissions">
		</div>
	</div>

</form>