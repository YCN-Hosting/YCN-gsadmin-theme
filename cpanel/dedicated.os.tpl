<h1>Dedicated Server</h1>

This server currently has {{$installedos}} installed as its operating system, if you wish to modify this, the new OS install process will <span style="color:red; font-weight:bold;">remove all data</span> and it will be unobtainable in the future.

<form method="post" style=" padding-top:20px;">
	<div style="padding-left:100px; float:left; text-align:left; width:120px; font-weight:bold; clear:both; padding-top:7px;">
		Selects OS:
	</div>
	<div style="float:left; text-align:left; width:400px;">
		<select name="distro">
		{foreach from=$oslist item=os}
			<option value="{{$os.name}}">{{$os.distro}}</option>
		{/foreach}
		</select>
	</div>
	
	<div style="clear:both; padding-left:100px;">
		<input type="checkbox" name="confirmos" value="reinstall"> Check this box to confirm that you understand you will lose all data on your server and your server will not be reachable during the install process
	</div>
	
	<div style="clear:both; padding-left:220px; padding-top:10px;">
		<input type="submit" value="Issue Reinstall" class="btn">
	</div>
</form>