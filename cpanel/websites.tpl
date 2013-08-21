{if $service.directadmin}
<center>
<h1>Website</h1>
<img src="/logo/www.png" />
<br />
<div style="width:500px;">
<div style="clear:both; height:20px;"></div>

<div style="float:left; text-align:left; width:200px; font-weight:bold">Domain :</div>
<div style="float:left; text-align:left; width:300px;">
<a href="http://{{$service.domain}}">{{$service.domain}}</a><br/>
<a href="http://www.{{$service.domain}}">www.{{$service.domain}}</a>
</div>
<div style="clear:both; height:20px;"></div>

<div style="float:left; text-align:left; width:200px; font-weight:bold">Username :</div>
<div style="float:left; text-align:left; width:300px;">{{$service.username}}</div>
<div style="clear:both; height:20px;"></div>

<div style="float:left; text-align:left; width:200px; font-weight:bold">Password :</div>
<div style="float:left; text-align:left; width:300px;"><a href="http://web.ycn-hosting.com:2222/CMD_LOST_PASSWORD?username={{$service.username}}">Click to reset.</a></div>
<div style="clear:both; height:20px;"></div>

<div style="float:left; text-align:left; width:200px; font-weight:bold">Direct Admin :</div>
<div style="float:left; text-align:left; width:300px;"><a href="http://web.ycn-hosting.com:2222">http://web.ycn-hosting.com:2222</a></div>
<div style="clear:both; height:20px;"></div>

<div style="float:left; text-align:left; width:200px; font-weight:bold">Package :</div>
<div style="float:left; text-align:left; width:300px;">Website {{$service.package}}</div>
<div style="clear:both; height:20px;"></div>

</div>
</center>
{else}

<center>
<h1>Website</h1>
<img src="/logo/www.png" />
<br />
<div style="width:500px;">
<div style="clear:both; height:20px;"></div>
<div style="float:left; text-align:left; width:200px; font-weight:bold">Domain :</div>
<div style="float:left; text-align:left; width:300px;"><?php echo $service['domain'].'<br /><a href="http://www.'.$service['domain'].'">(www.'.$service['domain'].')</a>'; ?></div>
<div style="clear:both; height:20px;"></div>

{if $service.additional_domains}
<div style="float:left; text-align:left; width:200px; font-weight:bold">Additional Domains :</div>
<div style="float:left; text-align:left; width:300px;"><?php echo $service['additional_domains'];?></div>
<div style="clear:both; height:20px;"></div>
{/if}

{if $service.database}
<h3>MySQL Database</h3>
<div style="clear:both; height:20px;"></div>
<div style="float:left; text-align:left; width:200px; font-weight:bold">Hostname :</div>
<div style="float:left; text-align:left; width:300px;"><?php echo WWW_SERVER_HOST;?></div>
<div style="clear:both; height:20px;"></div>
<div style="float:left; text-align:left; width:200px; font-weight:bold">Database :</div>
<div style="float:left; text-align:left; width:300px;"><?php echo $service['database'];?></div>
<div style="clear:both; height:20px;"></div>
<div style="float:left; text-align:left; width:200px; font-weight:bold">Username :</div>
<div style="float:left; text-align:left; width:300px;"><?php echo $service['database'];?></div>
<div style="clear:both; height:20px;"></div>
<div style="float:left; text-align:left; width:200px; font-weight:bold">Password :</div>
<div style="float:left; text-align:left; width:300px;"><?php echo $service['password'];?></div>
<div style="clear:both; height:20px;"></div>
{/if}
<?php } 
if (check_permission("F",$user['user_id'], 'website',$website_id)) {
?>
<a href="?module=files&path=<?php echo htmlspecialchars($service['domain']); ?>"><h3>Edit With File Manager</h3></a>
<?php } ?>
</div>
</center>
{/if}
