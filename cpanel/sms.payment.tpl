<h1>SMS Payments</h1>
{if !$paymentfound}
<i class="icon-exclamation-sign"></i>Payment could not be found, please contact support if you think this is an error<br/>
{else}
Thank you for making a payment with YCN-Hosting. 
{if $payment.status == "100"}
	Your payment was successful and has been accepted, the balance has been added to your clanpay account
{else}
	Unfortunately your payment does not appear to have been processed, if you think this is an error then please contact support and this will be resolved as soon as possible.
{/if}
{/if}