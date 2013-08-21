<h1>Upload file</h1>
{if $error == "1"}
	<i class="icon-exclamation-sign"></i> There was an error uploading your file, please try again or upload via FTP
{else if $error == "2"}
	<i class="icon-exclamation-sign"></i> There was an error moving your uploaded file, please try again or upload via FTP
{else if $uploaded == "1"}
	<i class="icon-ok-circle"></i> File {{$filename}} has been uploaded successfully
	<script type="text/javascript">
		function redirect() {
			window.location='/files{{$path}}/';
		}
		var redirect_timer = setTimeout('redirect()','1000');
	</script>
{else}
<form enctype="multipart/form-data" method="POST">
	<input type="hidden" name="MAX_FILE_SIZE" value="33554432" />
	To upload maps/mods we suggest to use an FTP client instead. (e.g. <a href="http://filezilla-project.org/" target="_blank">FileZilla</a>)<br />
	The login details for FTP are your Control Panel username and password 
	on YCN-Hosting.com:21<br />Note: The host for FTP is <b>not</b> the ip 
	of your gameserver<br /><br />
	Choose your file to upload: <input name="uploadedfile" type="file" /><br />
	<br />
	<input type="submit" value="Upload File" class="submit btn" />
</form>
{/if}