<h1>Dedicated Server</h1>
		<ul class="stat-boxes" style="padding-left:14px;">
			<li>
				<div class="left peity_bar_bad" style="height:47px;">
					<img src="/img/{{$serverspecs.country}}-dedi.png" style="margin-top:-2px;"/>
				</div>
				<div class="right" style="font-size: 14px;">
					{if $serverspecs.country == "uk"}
					<strong>London</strong>
					England
					{else}
					<strong>Unknown</strong>
					Unknown
					{/if}
				</div>
			</li>

			<li>
				<div class="left peity_bar_good"><span><span style="display: none;"><span style="display: none;"><span style="display: none;"><span style="display: none;">{{$pings}}</span><canvas width="50" height="24"></canvas></span><canvas width="50" height="24"></canvas></span><canvas width="50" height="24"></canvas></span><canvas width="50" height="24"></canvas></span>{{$up|number_format:1}}% Uptime</div>
				<div class="right">
					<strong>{{$lastping|number_format:2}}ms</strong>
					Latency
				</div>
			</li>
			<li>
				<div class="left peity_line_neutral"><span><span style="display: none;"><span style="display: none;"><span style="display: none;"><span style="display: none;">{{$trafs}}</span><canvas width="50" height="24"></canvas></span><canvas width="50" height="24"></canvas></span><canvas width="50" height="24"></canvas></span><canvas width="50" height="24"></canvas></span>{{$lasttraf|number_format:1}}Mbit</div>
				<div class="right">
					<strong>{{$monthtraf|number_format:1}}GB</strong>
					Bandwidth
				</div>
			</li>
		</ul>
		
		<div style="padding-left:70px; padding-top:20px; clear:both;">
			<div style="float:left; text-align:left; width:120px; font-weight:bold; clear:both;">
				Running OS:
			</div>
			<div style="float:left; text-align:left; width:400px; padding-bottom:15px;">
				{{$serverspecs.distro}}
			</div>
			<div style="float:left; text-align:left; width:120px; font-weight:bold; clear:both;">
				CPU:
			</div>
			<div style="float:left; text-align:left; width:400px; padding-bottom:15px;">
				{{$serverspecs.cpu}}
			</div>
			<div style="float:left; text-align:left; width:120px; font-weight:bold; clear:both;">
				Memory:
			</div>
			<div style="float:left; text-align:left; width:400px; padding-bottom:15px;">
				{{$serverspecs.mem}}
			</div>
			<div style="float:left; text-align:left; width:120px; font-weight:bold; clear:both;">
				Hard Disks:
			</div>
			<div style="float:left; text-align:left; width:400px; padding-bottom:15px;">
				{{$serverspecs.hdd}}
			</div>
			<div style="float:left; text-align:left; width:120px; font-weight:bold; clear:both;">
				Port Speed:
			</div>
			<div style="float:left; text-align:left; width:400px; padding-bottom:15px;">
				100Mbps Full Duplex
			</div>
		</div>
		
		<div style="text-align:center; padding-top:10px; clear:both; padding-bottom:10px;">
			<a href="/dedicated/{{$serverid}}/ips/" class="btn"><i class="icon-globe" style="margin-top:2px;"></i>IP Management</a>
			<a href="/dedicated/{{$serverid}}/reboot/" class="btn"><i class="icon-off" style="margin-top:2px;"></i>Reboot</a>
			<a href="/dedicated/{{$serverid}}/os/" class="btn"><i class="icon-wrench" style="margin-top:2px;"></i>OS Install</a>			
			<a href="/dedicated/{{$serverid}}/upgrade/" class="btn"><i class="icon-shopping-cart" style="margin-top:2px;"></i>Upgrades</a>			
		</div>
		

        <script src="//admin.ycn-hosting.com/js/excanvas.min.js"></script>
        <script src="//admin.ycn-hosting.com/js/jquery.min.js"></script>
		<script src="//admin.ycn-hosting.com/js/jquery.ui.custom.js"></script>
		<script src="//admin.ycn-hosting.com/js/bootstrap.min.js"></script>
		<script src="//admin.ycn-hosting.com/js/jquery.flot.min.js"></script>
		<script src="//admin.ycn-hosting.com/js/jquery.flot.resize.min.js"></script>
		<script src="//admin.ycn-hosting.com/js/jquery.peity.min.js"></script>
		<script src="//admin.ycn-hosting.com/js/unicorn.dashboard.js"></script>
	
	
	
	<link rel="stylesheet" href="//admin.ycn-hosting.com/css/unicorn.main.css">

