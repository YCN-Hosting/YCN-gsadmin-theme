<h1>Teamspeak 3 Server {{$service.slots}} slots</h1>
<center>
<div style="width:500px;">
<img src="/logo/teamspeak.gif" />
<div style="clear:both; height:20px;"></div>
<div style="float:left; text-align:left; width:200px; font-weight:bold">Slots :</div>
<div style="float:left; text-align:left; width:300px;">{{$service.slots}}</div>
<div style="clear:both; height:20px;"></div>
<div style="float:left; text-align:left; width:200px; font-weight:bold">Address :</div>
<div style="float:left; text-align:left; width:300px;">{{$service.address}}:{{$service.port}} ({{$service.ip}}:{{$service.port}})</div>
<div style="clear:both; height:20px;"></div>
<div style="float:left; text-align:left; width:200px; font-weight:bold">Admin Token :</div>
<div style="float:left; text-align:left; width:300px;">{{$service.username}}<br />
<b><a href="/voice/{{$service.voice_id}}/newtoken/">Create New Token</a></b></div>
<div style="clear:both; height:20px;"></div>
</div>
</center>