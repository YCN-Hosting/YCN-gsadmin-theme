<div class="alert alert-info">
  <strong>Please be aware</strong> you will only get 70% of your payment in clanpay balance due to fees and only works in the <img src="//cpanel.ycn-hosting.com/img/gb.png"/> United Kingdom
</div>
<h1>SMS Payments</h1>
You are now able to charge your Clanpay balance using SMS payments. At this time SMS payments are restricted to phones in the UK (+44). At this time, we charge &pound;10.00 to add &pound;7.00 to your clanpay balance. This price is due to the high fees involved with processing SMS payments.
<br/><br/>
<h2>Add credit with SMS payments</h2>
<br/>
<center><a class="btn" href="/sms/newpayment/">Pay with SMS</a></center>
<br/>

<h2>Past Payments</h2>

<table class="table">
	<thead>
		<tr>
			<th><i class="icon-barcode" style="margin-top:2px;"></i>SMS ID</th>
			<th><i class="icon-calendar" style="margin-top:2px;"></i>Date</th>
			<th><i class="icon-tags" style="margin-top:2px;"></i>Amount</th>
		</tr>
	</thead>
	<tbody>
		{{foreach from=$payments item=payment}}
			<tr>
				<td>{{$payment.smsid}}</td>
				<td>{{$payment.date|date_format}}</td>
				<td>&pound;{{$payment.amount|number_format:2}}</td>
			</tr>
		{{/foreach}}
	</tbody>
</table>

