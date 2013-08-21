<h1>Dedicated Server</h1>
<i class="icon-info-sign"></i> This server has a scheduled task, and therefore it is locked until this task is complete<br/><br/>

{if $task.task == "reinstall"}
	{if $task.stage == 6}
		<div class="well">
			<i class="icon-check"></i><b>Great news!</b><br/>
			Your operating system installation has completed!
			You can now SSH to your server on its main IP address, using the root login and the same password as your YCN account.<br/>
			<a class="btn" href="/dedicated/{{$dedid}}/ack/">Proceed</a>
		</div>
	{else}
		Your server is currently reinstalling an operating system	
	{/if}

	{if $task.stage < 6}<meta http-equiv="refresh" content="10" />{/if}
	<table class="table">
		<tr {if $task.stage > 0}class="success"{else if $task.stage == 0}class="warning"{/if}>
			<td>Starting</td>
			<td>The installation process is beginning, and the loaded tasks are preparing to begin installation</td>
		</tr>
		<tr {if $task.stage > 1}class="success"{else if $task.stage == 1}class="warning"{/if}>
			<td>Pre-install</td>
			<td>The installation system is preparing the environment to launch the OS installation</td>
		</tr>
		<tr {if $task.stage > 2}class="success"{else if $task.stage == 2}class="warning"{/if}>
			<td>Rebooting</td>
			<td>Your server is now rebooting into the OS installation</td>
		</tr>
		<tr {if $task.stage > 3}class="success"{else if $task.stage == 3}class="warning"{/if}>
			<td>Install</td>
			<td>Your server is being installed with the OS you chose, this may take some time</td>
		</tr>
		<tr {if $task.stage > 4}class="success"{else if $task.stage == 4}class="warning"{/if}>
			<td>Post-install</td>
			<td>The installation process is running some tasks so that the server is configured correctly for your use</td>
		</tr>
		<tr {if $task.stage > 5}class="success"{else if $task.stage == 5}class="warning"{/if}>
			<td>Rebooting</td>
			<td>The OS installation is now complete, waiting for reboot for completion</td>
		</tr>
	</table>
{/if}