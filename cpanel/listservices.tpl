<h1>My Services</h1>
<table class="table table-striped table-hover" style=" margin:0 auto;">
{{foreach from=$services item=service}}
<tr>
	<td style="width:40px; vertical-align:middle;"><img src="/images/games/{{$service.game}}.png" /></td>
	<td>
		{{if $service.type == "website"}}
			<a href='/hosting/{{$service.website_id}}/'>
				<b>Web Hosting {{$service.domain}}</b>
			</a>
		{{elseif $service.dedid}}
			<a href='/dedicated/{{$service.dedid}}/'>
				<b>Dedicated Server</b>
			</a>
		{{elseif $service.type == "voice"}}
			<a href='/voice/{{$service.voice_id}}/'>
				<b>{{$service.title}} {{$service.slots}} slot server</b>
			</a>
		{{elseif $service.type == "bouncer"}}
			<a href='?module=bouncers&bouncer_id={{$service.service_id}}'>
				<b>Bouncer {$service.limit} connection limit</b>
			</a>
		{{else}}
			<a href='?module=game_servers&server_id={{$service.server_id}}'>
				<b>{{$service.title}} {{$service.slots}} slot {{if $service.passworded == 1}}Private{{else}}Public{{/if}} server</b>
			</a>
		{{/if}}
		</br>
		{{if $service.type != "bouncer" and $service.type != "website" and !$service.dedid}}
			<b>Address</b>: {{$service.ip}}:{{$service.port}}
		{{/if}}
		
		{{if $service.dedid}}
			<b>Main Address</b>: {{$service.mainip}} {if $service.rdns !== ""}<br/><b>rDNS</b> : {{$service.rdns}}{/if}
		{{/if}}
		
		{{if $service.stats_players > -1}}
			<b>Players</b>: {{$service.stats_players}}/{{$service.slots}}
		{{/if}}
		
		{if $service.type == "bouncer"}
			<b>Main Ident:</b> {$service.ident}
		{/if}
		
		
		{{if $service.stats_name}}
			<br /><b>Server Name</b>: {{$service.stats_name}}
		{{/if}}
				
		{{if $service.additional_domains}}
			<b>Additional Domains</b>: {{$service.additional_domains}}<br/>
		{{/if}}
		{{if $service.database}}With MySQL support{{else if $service.type == "website"}}Without MySQL support{{/if}}			
		
		{{if $isadmin == 1}}
			{{if $service.active == 1}}<span style="color:#0F0;font-weight:bold"> Active</span>{{else}}<span style="color:#F00;font-weight:bold"> Inactive</span>{{/if}}
		{{/if}}
	</td>
</tr>
{{/foreach}}
</table>