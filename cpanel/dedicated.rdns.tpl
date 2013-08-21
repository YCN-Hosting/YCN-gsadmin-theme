<h1>Dedicated server</h1>
{if $updated}<i class="icon-ok"></i>PTR record updated</br></br>{/if}
From here, you can modify the PTR (rDNS) record for {{$ip}}, this is the address that can be resolved from the IP address, this is often required for IRC and mail servers. Don't forget that you may also need to set the DNS address to point to this IP from the domain.
<form method="POST">

	<div class="normal_field" style="padding-top:15px;">
		<div class="label">PTR record :</div>
		<div class="input">
			<input type="text" name="rdns" size="50" value="{{$rdns}}">
		</div>
	</div>
	<div class="normal_field">
		<div class="label"></div>
		<input type="submit" value="Update rDNS" class="btn">
	</div>

</form>