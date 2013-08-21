<h1>Gifts</h1>
{{if $error == 1}} 
	<i class="icon-exclamation-sign"></i> Please provide a valid value to generate a coupon<br/><br/>
{{else if $error == 2}}
	<i class="icon-exclamation-sign"></i> Your clanpay balance is only &pound;{{$details.credit|number_format:2}}, you do not have enough balance to generate this coupon.<br/><br/>
{{/if}}
{{if $success}}
	<i class="icon-ok-circle"></i> {{$success}}<br/><br/>
{{/if}}

Gifts allow you to generate a 'Gift Coupon' which can be redeemed by another user for purchasing services on YCN-Hosting. These coupons are great for gifts such as seasonal holidays and birthdays. You have &pound;{{$details.credit|number_format:2}} in your clanpay balance which you can use to spend on gift coupons.<br/><br/>
Please note that once you have generated a coupon and another user has redeemed this, you can not request these funds back. However if you generate a coupon and wish to get it back to your own clanpay account you can simply use the coupon yourself<br/><br/>

<h2>Generate Coupon</h2>

<form method="POST">
<input type="hidden" name="action" value="generate" />
	<input type="hidden" name="action" value="generate" />

	<div class="normal_field">
		<div class="label">Coupon Value (GBP) :</div>
			<div class="input input-prepend">
			<span class="add-on">&pound;</span><input class="span2" type="text" name="generatecoupon" size="50" placeholder="0.00" />
		</div>
	</div>
	
	<div class="normal_field">
		<div class="label"></div>
			<div class="input">
			<input type="submit" value="Generate" class="btn"/>
		</div>
	</div>
</form>

{{if $coupons}}
	<table class="table">
		<thead>
			<tr>
				<th><i class="icon-barcode" style="margin-top:2px;"></i>Coupon Code</th>
				<th><i class="icon-tags" style="margin-top:2px;"></i>Value</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			{{foreach from=$coupons item=coupon}}
				<tr>
					<td>{{$coupon.coupon}}</td>
					<td>&pound;{{$coupon.value|number_format:2}}</td>
					<td><a title="Redemption link" href="https://cpanel.ycn-hosting.com/?module=redeemcoupon&from={{$details.firstname}}&coupon={{$coupon.coupon}}&value={{$coupon.value}}" target="_blank"><i class="icon-share-alt"></i></a></td>
				</tr>
			{{/foreach}}
		</tbody>
	</table>
{{/if}}
