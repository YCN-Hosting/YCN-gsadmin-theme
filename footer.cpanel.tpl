</div>
</div>

<div class="rightside">
	<div class="aboutycnbox clearfix">
		<h4>YCN Control Panel</h4>
		<div class="abouttext">
			<ul class="nav nav-list tryus" style="width:218px;">
				<li {{if $module == "myservices" or $module == "voice" or $module == "game_servers" or $module == "bouncers" or $module == "dedicated"}}class="active"{{/if}}>
					<a href="/"><i class="icon-screenshot"></i>My Services</a>
				</li>
				<li {{if $module == "details"}}class="active"{{/if}}>
					<a href="/account/"><i class="icon-cog"></i>My Account</a>
				</li>
				<li {{if $module == "files"}}class="active"{{/if}}>
					<a href="/files/"><i class="icon-folder-open"></i>File Manager</a>
				</li>
				<li {{if $module == "billing"}}class="active"{{/if}}>
					<a href="/billing/"><i class="icon-calendar"></i>Billing</a>
				</li>
				<li {{if $module == "clanpay"}}class="active"{{/if}}>
					<a href="/clanpay/"><i class="icon-user"></i>Clanpay</a>
				</li>
				<li {{if $module == "gift"}}class="active"{{/if}}>
					<a href="/gifts/"><i class="icon-gift"></i>Gifts</a>
				</li>
				<li {{if $module == "subuser"}}class="active"{{/if}}>
					<a href="/subuser/"><i class="icon-user"></i>Sub Users</a>
				</li>
				<li {{if $module == "tickets"}}class="active"{{/if}}>
					<a href="/tickets/"><i class="icon-inbox"></i>Support Tickets</a>
				</li>
				<li {{if $module == "messages"}}class="active"{{/if}}>
					<a href="/messages/"><i class="icon-envelope"></i>{if $unread > 0}<b>Messages ({$unread})</b>{else}Messages{/if}</a>
				</li>
				<li {{if $module == "sms"}}class="active"{{/if}}>
					<a href="/sms/"><i class="icon-signal"></i>SMS Payments</a>
				</li>				
				<li>
					<a href="/logout/"><i class="icon-share-alt"></i>Logout</a>
				</li>
			</ul>
		</div>
	</div>
	
</div>
</div>
<div class="footer">
Copyright YCN-Hosting &copy; 2012<br/>Design by Ben Sampson and Marcus Stewart Hughes <br/> <a href=
"http://www.ycn-hosting.com/page/terms/">Terms of Service</a> <a href="http://www.ycn-hosting.com/page/privacy/">Privacy Policy</a>
</div>
</body>
</html>