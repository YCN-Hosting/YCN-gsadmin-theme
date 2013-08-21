<h1>Sub Users</h1>
{if $subusers}
	<table class="table">
		<thead>
			<tr>
				<th><i class="icon-user" style="margin-top:2px;"></i>Username</th>
				<th><i class="icon-user" style="margin-top:2px;"></i>Name</th>
				<th><i class="icon-envelope" style="margin-top:2px;"></i>Email</th>
				<th><i class="icon-cog" style="margin-top:2px;"></i>Actions</th>
			</tr>
		</thead>
		<tbody>
		{foreach from=$subusers item=subuser}
			<tr>
				<td>{{$subuser.username}}</td>
				<td>{{$subuser.firstname}} {{$subuser.lastname}}</td>
				<td>{{$subuser.email}}</td>
				<td>
					<a href="/subuser/edit/{{$subuser.user_id}}/" class="">Edit</a>&nbsp;
					<a style="cursor:pointer;" onclick="if (confirm('Are you sure you want to delete user: {{$subuser.username}}')) window.location='/subuser/delete/{{$subuser.user_id}}/'" class="">Delete</a>
				</td>
			</tr>
		{/foreach}
		</tbody>
	</table>
{else}
<h3>No Sub Users</h3>
{/if}

{if $subusers|count < $sublimit}
	<a href="/subuser/add/" class="btn">Add New Sub User</a>
{/if}