<h1>My Account <span style="font-size:14px;font-weight:normal;"><a href="/account/password/">Change Password</a></span></h1>
{{if $error}}
	<span style="font-weight:bold; color:red;">Error:</span> {{$error}}<br/>
{{/if}}
Edit your account details, these details should be kept up to date.<br/><br/>
<form method="post" action="/account/update/">
	<div class="normal_field">
		<div class="label">Firstname :</div>
		<div class="input">
			<input type="text" name="firstname" size="50" value="{{$details.firstname}}"/>
		</div>
	</div>

	<div class="normal_field">
		<div class="label">Surname :</div>
		<div class="input">
			<input type="text" name="lastname" size="50" value="{{$details.lastname}}"/>
		</div>
	</div>

	<div class="normal_field">	
		<div class="label">Country :</div>
		<div class="input">
			<select name="country">
				{foreach from=$country key=cid item=clist}
					<option value="{{$cid}}" {{if $details.country == $cid}}selected="selected"{{/if}} >{{$clist}}</option>
				{/foreach}
			</select>
		</div>
	</div>

	<div class="normal_field">
		<div class="label">Username :</div>
		<div class="input">
			<input type="text" name="username" size="50" value="{{$details.username}}" readonly="readonly"/>
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
		<input type="submit" value="Update Details" class="btn" />
	</div>
</form>