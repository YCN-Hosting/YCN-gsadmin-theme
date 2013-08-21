<h1>SMS Payments</h1>


{if $throttle}
Slow down! try again in 10 seconds!

{else}
You're now ready to pay! This payment will cost you &pound;10.00 and you will be credited &pound;7.00 on payment completion
<br/><br/>
<center><a href="{{$paymentlink}}" class="btn">Proceed to Payment</a></center>
{/if}