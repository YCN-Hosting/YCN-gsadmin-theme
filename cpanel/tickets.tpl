<h1>Support Tickets <span style="font-size:14px;font-weight:normal;"><a href="/tickets/">{{$open}} open tickets</a>, and <a href="/tickets/closed/">{{$closed}} closed</a></span></h1>	

{if $tickets}
	<table class="table">
		<thead>
			<tr>
				<th><i class="icon-envelope" style="margin-top:2px;"></i>Title</th>
				<th><i class="icon-cog" style="margin-top:2px;"></i>Type</th>
				<th><i class="icon-time" style="margin-top:2px;"></i>Last Post</th>
			</tr>
		</thead>
		<tbody>
		{foreach from=$tickets item=ticket}
			<tr>
				<td><a href="/tickets/view/{{$ticket.ticket_id}}/">{{$ticket.title}}</a></td>
				<td>{{$ticket.type}}</td>
				<td>By {if $ticket.poster_id > 0}Admin{else}Client{/if} at {{$ticket.date_posted|date_format:"H:i d/m/y"}}</td>
			</tr>
		{/foreach}
		</tbody>
	</table>
{else}
	<i class="icon-exclamation-sign"></i>You have no {if $status != "status=0"}open{else}past{/if} tickets
	<br/>
	You may create a new support ticket to request assistance by selecting the "Raise Ticket" button below.<br/>&nbsp;
{/if}
<div style="clear:both; text-align:right;"><a href="/tickets/new/" class="btn">Raise Ticket</a></div>