<h1>Packages and Billing <span style="font-size:14px;font-weight:normal;"><a href="/billing/">View your packages</a></span></h1>
{if $invoices}
<table class="table">
	<thead>
		<tr>
			<th><i class="icon-asterisk" style="margin-top:2px;"></i>ID</th>
			<th><i class="icon-ok" style="margin-top:2px;"></i>Status</th>
			<th><i class="icon-calendar" style="margin-top:2px;"></i>Date</th>
			<th><i class="icon-retweet" style="margin-top:2px;"></i>Contract Term</th>
			<th><i class="icon-tags" style="margin-top:2px;"></i>Price</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		{foreach from=$invoices key=iid item=invoice}
			<tr>
				<td>#{{$iid}}</td>
				<td>{{$invoice.status_txt}}</td>
				<td>{{$invoice.unix_due|date_format}}</td>
				<td>{{$invoice.term_txt}}</td>
				<td>&pound; {{$invoice.price|number_format:2}}</td>
				<td><?php echo $actions; ?>
				<a href="/billing/invoices/{{$iid}}/">View</a>
					{if $invoice.status == 0 or $invoice.status == 2}
						<a style="cursor:pointer" onclick="if(confirm('You can cancel any invoice which you are not planning to pay, this will remove the invoice from your invoices\n\nDO NOT cancel an invoice if you have made a payment and it has not been updated. If you believe that your payment should be updated then please contact our support staff.\n\nPress OK if you still wish to cancel this invoice\nOR\nPress Cancel to return to the page')) window.location='?module=billing&action=cancel_invoice&invoice_id={{$iid}}';">Cancel</a>
					{/if}
				</td>
			</tr>
		{/foreach}
	</tbody>
</table>
{else}
	There are no invoices on for this account
{/if}