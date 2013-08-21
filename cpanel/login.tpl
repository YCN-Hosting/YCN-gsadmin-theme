<img src="//cpanel.ycn-hosting.com/images/control_panel.jpg"><br />
{if $notice}
	<div class="alert">
	{if $notice == "timeout"}
		<i class="icon-exclamation-sign"></i>Your session has timed out due to inactivity (30 minutes)<br/>
	{else if $notice == "attemptsreached"}
		<i class="icon-exclamation-sign"></i>You can only attempt to login {{$maxattempts}} times within any {math equation="x / y" x=$bantime y=3600} hours<br/>
	{else if $notice == "invalidlogin"}
		<i class="icon-exclamation-sign"></i>Incorrect username and/or password<br/>
	{/if}
	</div>
{else}	
	<br/>
{/if}
<br/>

<form class="form-horizontal" name="form1" method="post" action="/login/">
  <div class="control-group">
    <label class="control-label" for="username">Username</label>
    <div class="controls">
      <input type="text" id="username" name="username" placeholder="Username">
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="password">Password</label>
    <div class="controls">
      <input type="password" name="password" id="password" placeholder="Password">
    </div>
  </div>
  <div class="control-group">
    <div class="controls">
      <button type="submit" class="btn">Sign in</button><br/><br/>
	  <a href="https://cpanel.ycn-hosting.com/index.php?action=forgot">Forgot your password?</a>
    </div>
  </div>
</form>
