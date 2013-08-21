<h1>Dedicated Server</h1>
IP address management. With each server you recieve one IP address. Additional IP addressed may be requested, as long as the request falls inline with the RIPE allocation guidelines.<br/><br/>

<i class="icon-globe"></i>The main IP on your server is : {{$mainip}} {if $mainrdns !== ""}({{$mainrdns}}){/if} <a href="/dedicated/{{$dedid}}/rdns/{{$mainip}}/" class="btn" style="margin-left:30px; margin-top:-5px;">Edit RDNS</a>
<br/><br/>

<h1>Your additional IPs</h1>
{if $additional|count >= $additionalips}
	<i class="icon-ban-circle"></i>You may not request any new IP addresses
{else}
	<i class="icon-info-sign"></i>You may request up to {{$additionalips}} additional IPs on your server, you are currently using {$additional|count} of your {{$additionalips}} extra. To request a new IP address, your request must fall under RIPE allocation guidelines. To proceed with a request <a href="/tickets/new/">open a support ticket</a> outlining your request justification.
{/if}
<table class="table table-striped">
	{foreach from=$additional key=ip item=rdns}
	<tr>
		<td>{{$ip}}</td>
		<td>{{$rdns}}</td>
		<td><a title="Edit RDNS" href="/dedicated/{{$dedid}}/rdns/{{$ip}}/"><i class="icon-edit"></i></a></td>
	</tr>
	{/foreach}
</table>