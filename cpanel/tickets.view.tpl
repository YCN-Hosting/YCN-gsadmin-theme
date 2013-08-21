<h1>Support Tickets</h1>

<div class="normal_field">
	<div class="label" style="width:100px; text-align:left; font-weight:bold;"><i class="icon-envelope" style="margin-top:2px;"></i>Subject :</div>
	<div class="input" style="padding-top:5px;">
		{{$ticket.title}}
	</div>
</div>

<div class="normal_field">
	<div class="label" style="width:100px; text-align:left; font-weight:bold;"><i class="icon-ok" style="margin-top:2px;"></i>Status :</div>
	<div class="input" style="padding-top:5px;">	
		{if $ticket.status == "1"}Open{else if $ticket.status == "2"}On Hold{else}Closed{/if}
	</div>
</div>

<table class="table table-striped">
	<tbody>
	{foreach from=$messages item=message}
			<tr>
				<td style="width:150px;">
					{if $message.poster_id == "0"}
					Posted by Client</br>
					{{$user.firstname}} {{$user.lastname}}</br>
					{else}
					Posted by Admin</br>
					{{$message.name}}</br>
					{/if}
					on {{$message.unix_date_posted|date_format:"H:i d/m/y"}}
				</td>
				<td>{{$message.message|nl2br}}</td>
			</tr>
		{/foreach}
	</tbody>
</table>

{if $ticket.status > 0}
	<div style="text-align:right; font-weight:bold;"><a href="/tickets/close/{{$ticket.ticket_id}}/">Close Ticket</a></div>
{/if}

<form method="post" action="/tickets/reply/{{$ticket.ticket_id}}/">
	<h2>Post Reply</h2><br/>

	<div class="normal_field">
		<div class="label" style="width:140px;">Message :</div>
		<div class="input" style="width:450px;">
			<textarea name="message" rows="10" cols="60" style="width:450px;"></textarea>
		</div>
		<br style="clear:both"/>
	</div>
	<input type="submit" class="submit btn" value="Reply" style="margin-left:170px;" />
</form>