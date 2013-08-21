<h1>Raise new ticket</h1>

{if $ticket_id}
	<script type="text/javascript">
	function redirect() {
		window.location="/tickets/view/{{$ticket_id}}/";
	}
	var redirect_timer = setTimeout('redirect()','300');
	</script>
	<i class="icon-info-sign"></i>Your support ticket has been closed
{else}
	<form method="post" class="raiseticket">
		<div class="normal_field">
			<div class="label">Subject :</div>
			<div class="input">
				<input type="text" name="title" size="50" value="" />
			</div>
		</div>

		<div class="normal_field">
			<div class="label">Priority :</div>
			<div class="input">
				<select name="priority">
					<option value="0">Low</option>
					<option value="1">Medium</option>
					<option value="2">High</option>
					<option value="3">Urgent</option>
				</select>
			</div>
		</div>

		<div class="normal_field">
			<div class="label">Type :</div>
			<div class="input">
				<select name="type">
					<option value="Technical Support">Technical Support</option>
					<option value="Sales Query">Sales Query</option>
					<option value="Billing">Billing</option>
				</select>
			</div>
		</div>

		<div class="normal_field">
			<div class="label">Affected Services :</div>
			<div class="input">
				<table class="table table-condensed taleft table-striped">
					{foreach from=$services item=service}
						<tr>
							<td><input type="checkbox" class="checkbox" name="services[]" value="{{$service.type}}"></td>
							<td>{{$service.info}}</td>				
						</tr>
					{/foreach}
				</table>
			</div>
		</div>

		<div class="normal_field">
			<div class="label">Message :</div>
			<div class="input">
				<textarea name="message" style="width:400px;height:150px;"></textarea>
			</div>
		</div>

		<div class="normal_field">
			<div class="label"></div>
			<div class="input">
				<input type="submit" class="submit btn" value="Create" />
			</div>
		</div>
	</form>
{/if}