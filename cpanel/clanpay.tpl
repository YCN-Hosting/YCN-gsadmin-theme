<h1>Clanpay <span style="font-size:14px;font-weight:normal;"><a href="/clanpay/history/">view history</a></span></h1>

<div class="normal_field">
	<div class="label">Currend Balance (GBP) :</div>
	<div class="input price">
		&pound;&nbsp;{{$details.credit|number_format:2}}
	</div>
</div>

<div class="normal_field">
	<div class="label">Currend Balance (Euros) :</div>
	<div class="input price">
		&euro;&nbsp;{{{math equation="x * y" x=$details.credit y=$eurmultipler}|number_format:2}}
	</div>
</div>

<script type="text/javascript">
function SelectAll(id)
{
    document.getElementById(id).focus();
    document.getElementById(id).select();
}
</script>

<div class="normal_field">
	<div class="label">Clanpay Link :</div>
	<div class="input">
		<input type="text" size="50" value="https://www.ycn-hosting.com/?page=payment&action=clandonate&username={{$details.username}}" id="clanpaylink" onClick="SelectAll('clanpaylink');"/>
	</div>
</div>

<br/><br/>
Clanpay allows your members or friends to contribute towards the cost of running a server. You can give out your clanpay link to these people and they will be able to make a credit card or paypal payment directly into your clanpay account. The amount of the donation can be adjusted on this link.<br/>
Once a payment is received and processed it will be credited into your account and you will be able to use your clanpay credit to purchase new services or renew existing purposes. You can do this by selecting Clanpay as the payment method when checking out a new order or selecting Clanpay in the billing section when renewing services.<br/>
Please note that all clanpay credit will be stored as our base currency (GBP &pound;). In the event of major changes in exchange rates your clanpay account may fluctuate however all our prices are also based on our base rate and thus the money on your clanpay credit will always be worth the same amount of services even if the exchange rate changes.<br/>
Clanpay credit can not be withdrawn from your account after it has been credited, additionally no refunds will be available for this service.