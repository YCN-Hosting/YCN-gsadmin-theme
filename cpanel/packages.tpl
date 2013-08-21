<h1>Packages and Billing <span style="font-size:14px;font-weight:normal;"><a href="invoices/">View your invoices</a></span></h1>

<script type="text/javascript">
	function UpdatePrice(monthly, i) {
		var term = document.getElementById('term'+i).value;
		switch(term){
		case '1':
			var multiplier = 1;
			break;
		case '2':
			var multiplier = 2*(100-{{$discounts.2}})/100;
			break;
		case '3':
			var multiplier = 3*(100-{{$discounts.3}})/100;
			break;
		case '6':
			var multiplier = 6*(100-{{$discounts.6}})/100;
			break;
		case '12':
			var multiplier = 12*(100-{{$discounts.12}})/100;
			break;	
		}
		document.getElementById('final'+i).innerHTML = (multiplier * monthly).toFixed(2);
	}
</script>

{foreach from=$packages key=pid item=package}
	<form method="post" action="?module=billing&action=pay&billing_id={{$package.billing_id}}">
		<table class="table table-striped" style="margin-bottom:0px;">
			<thead>
				<tr>
					<th colspan="2">
						<i class="icon-barcode" style="margin-top:2px;"></i>Package {{$pid}}
						<span style="float:right;">
							<i class="icon-tags" style="margin-top:2px;"></i>Expires :
							{if $package.unix_expires < $smarty.now}
								<span style=\"color:#FB0\">{{$package.unix_expires|date_format}}</span>
							{else}
								{{$package.unix_expires|date_format}}
							{/if}
						</span>
					</th>
				</tr>
			</thead>
			<tbody>
				{foreach from=$services.$pid item=service}
					<tr>
						<td>{{$service.info}}</td>
						<td style="text-align:right; padding-right:10px;">&pound; {{$service.price|number_format:2}}</td>
					</tr>
				{/foreach}
			</tbody>
		</table>

		<table class="table table-condensed" style="width:300px; float:right;">
			{if $package.package_discount > 0}
				<tr>
					<td>Package Discount</td>
					<td>-&pound;{{$package.package_discount}}</td>
				</tr>
			{/if}
			
			<tr>
				<td>Package Total</td>
				<td>&pound; {$package.total|number_format:2}</td>
			</tr>
			
			{if $package.discount > 0}
				<tr>
					<td>Discount</td>
					<td>{$package.discount|number_format:2}%</td>
				</tr>
			{/if}

			<tr>
				<td>Monthly Price</td>
				<td>&pound; {$package.monthly|number_format:2}</td>
			</tr>
			
			<tr>
				<td>Contract Length</td>
				<td>
					<select name="term" id="term{{$pid}}" onchange="UpdatePrice({{$package.monthly}},{{$pid}})" style="padding:0;height:20px; margin-bottom:0; width:150px;">
						<option value="1">1 Month</option>
						<option value="2">2 Month (-{{$discounts.2}}%)</option>
						<option value="3">3 Month (-{{$discounts.3}}%)</option>
						<option value="6">6 Month (-{{$discounts.6}}%)</option>
						<option value="12">12 Month (-{{$discounts.12}}%)</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td>Final Price</td>
				<td>&pound; <span id="final{{$pid}}"></span></td>
			</tr>
			<script type="text/javascript">UpdatePrice({{$package.monthly}},{{$pid}});</script>

			<tr>
				<td>Payment Method</td>
				<td>
					<select name="method" style="padding:0;height:20px; margin-bottom:0; width:150px;">
						<option value="Credit Card">Credit Card</option>
						<option value="Paypal">Paypal</option>
						<option value="Bank Transfer">Bank Transfer</option>
						<option value="Clanpay">Clanpay</option>
					</select>		
				</td>
			</tr>	

			<tr>
				<td></td>
				<td><input type="submit" value="Payment" class="btn"/></td>
			</td>

		</table>
	</form>
	<br style="height:200px;clear:both;"/>
</table>
{foreachelse}
	<b>There are no packages for this account</b>
{/foreach}	