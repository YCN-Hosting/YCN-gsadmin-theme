<h1>Edit Sub User</h1>
{if $error}
	<div id="error"><i class="icon-exclamation-sign"></i>{{$error}}</div><br/>
{/if}

<form method="post">
	<div class="normal_field">
		<div class="label">First Name :</div>
			<div class="input">
			<input type="text" name="firstname" size="50" value="{{$details.firstname}}" />
		</div>
	</div>

	<div class="normal_field">
		<div class="label">Last Name :</div>
			<div class="input">
			<input type="text" name="lastname" size="50" value="{{$details.lastname}}" />
		</div>
	</div>

	<div class="normal_field">
		<div class="label">Username :</div>
			<div class="input">
			<input type="text" name="username" size="50" value="{{$details.username}}" readonly="readonly"/>
		</div>
	</div>

	<div class="normal_field">
		<div class="label">Password :</div>
			<div class="input">
			<input type="text" name="password" size="50" value="{{$details.password}}" />
		</div>
	</div>

	<div class="normal_field">
		<div class="label">Email :</div>
			<div class="input">
			<input type="text" name="email" size="50" value="{{$details.email}}" />
		</div>
	</div>

	<div class="normal_field">
		<div class="label">Xfire :</div>
			<div class="input">
			<input type="text" name="xfire" size="50" value="{{$details.xfire}}" />
		</div>
	</div>

	<div class="normal_field">
		<div class="label"></div>
			<div class="input">
			<input type="submit" class="submit btn" value="Edit" />	
		</div>
	</div>
</form>
<h1>Permissions</h1>
<table class="table">
	<thead>
		<tr style="white-space: nowrap;">
			<th><i class="icon-screenshot" style="margin-top:2px;"></i>Service</th>
			<th><i class="icon-user" style="margin-top:2px;"></i>Permissions</th>
			<th><i class="icon-cog" style="margin-top:2px;"></i>Actions</th>
		</tr>
	</thead>
	<tbody>
		{foreach from=$services item=service}
			<tr>
				<td>{{$service.service_info}}</td>
				<td>{{$service.expanded}}</td>
				<td><a href="/subuser/permissions/{{$service.user_id}}/{{$service.service_type}}/{{$service.service_id}}/">Edit</a></td>
			</tr>
		{/foreach}
	</tbody>
</table>
