<h1>Messages <span style="font-size:14px;font-weight:normal;">{{$unread}} unread messages out of {{$messagecount}} total</span></h1>

{if $messagecount > 0}
<table class="table">
	<thead>
		<tr>
			<th><i class="icon-envelope" style="margin-top:2px;"></i>Subject</th>
			<th><i class="icon-time" style="margin-top:2px;"></i>Date Posted</th>
			<th><i class="icon-ok" style="margin-top:2px;"></i>Status</th>
		</tr>
	</thead>
	<tbody>
		{foreach from=$messages item=message}
			<tr>
				<td><a href="/messages/{{$message.message_id}}/">{{$message.subject}}</a></td>
				<td>{{$message.unix_date_posted|date_format:"H:i d/m/Y"}}</td>
				<td>{if $message.status}Read{else}Unread{/if}</td>
			</tr>
		{/foreach}
	</tbody>
</table>
{else}
	<i class="icon-exclamation-sign"></i>You have no messages
{/if}

{if $messagecount > 10}
<center>
	<div class="pagination">
		<ul>
			{for $pages=1 to {{math equation="x / y" x=$messagecount y=10}|ceil}}
				<li{if $pageno == $pages} class="disabled"{/if}><a href="/messages/page/{$pages}/">{$pages}</a></li>
			{/for}
		</ul>
	</div>
</center>
{/if}