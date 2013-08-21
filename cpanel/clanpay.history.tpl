<h1>Clanpay History <span style="font-size:14px;font-weight:normal;"><a href="/clanpay/">view details</a></span></h1>
<table class="table table-striped">
	<thead>
		<tr>
			<th><i class="icon-barcode" style="margin-top:2px;"></i>Amount</th>
			<th><i class="icon-calendar" style="margin-top:2px;"></i>Date</th>
			<th><i class="icon-tags" style="margin-top:2px;"></i>Details</th>
		</tr>
	</thead>
	<tbody>
	
	{foreach from=$history item=item}
		<tr>
			<td>&pound;{{$item.amount|number_format:2}}</td>
			<td>{{$item.due|strtotime|date_format}}</td>
			<td>
				{{if $item.id}}
					<b>Name:</b> {{$item.name|htmlentities}}<br />
					<b>Email:</b> {{$item.email|htmlentities}} <br />
				{{else}}
					Not Available
				{{/if}}
			</td>
		</tr>		
	{/foreach}
	</tbody>
</table>

<h2>SMS Payments</h2>

<table class="table">
	<thead>
		<tr>
			<th><i class="icon-barcode" style="margin-top:2px;"></i>SMS ID</th>
			<th><i class="icon-calendar" style="margin-top:2px;"></i>Date</th>
			<th><i class="icon-tags" style="margin-top:2px;"></i>Amount</th>
		</tr>
	</thead>
	<tbody>
		{{foreach from=$smspayments item=payment}}
			<tr>
				<td>{{$payment.smsid}}</td>
				<td>{{$payment.date|date_format}}</td>
				<td>&pound;{{$payment.amount|number_format:2}}</td>
			</tr>
		{{/foreach}}
	</tbody>
</table>