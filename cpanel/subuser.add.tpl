<h1>Add Sub-User</h1>

{if $error}
	<div id="error"><i class="icon-exclamation-sign"></i>{{$error}}</div>
{/if}

<i class="icon-info-sign"></i>This user will be emailed their login details after they have been added<br/><br/>

<form method="post">

<div class="normal_field">
	<div class="label">Firstname :</div>
	<div class="input">
		<input type="text" name="firstname" size="50" value="{{$details.firstname}}" />
	</div>
</div>

<div class="normal_field">
	<div class="label">Lastname :</div>
	<div class="input">
		<input type="text" name="lastname" size="50" value="{{$details.lastname}}" />
	</div>
</div>

<div class="normal_field">
	<div class="label">Username :</div>
	<div class="input">
		<input type="text" name="username" size="50" value="{{$details.username}}" />
	</div>
</div>

<div class="normal_field">
	<div class="label">Password :</div>
	<div class="input">
		<input type="text" name="password" size="50" value="{{$details.password}}" placeholder="Leave blank for random" />
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
		<input type="submit" class="submit btn" value="Add" />
	</div>
</div>
</form>
