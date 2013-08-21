<h1>Tail File <a href="javascript:togglefullscreen();"><i class="icon-resize-full" style="float:right; margin-top:-13px;"></i></a></h1>

Tailing file {{$path}}<br/><br/>

<script>
function updateajax(){
	$.ajax({
		url: "/files/taildata{{$path}}/",
		success: function(data) {
			$('#ajaxdata').html(data);
		}
	});
	setTimeout ('updateajax()', 500);

}
 updateajax();
</script>

<div style="width:100%; height: 400px; position:relative; background-color:black; overflow:hidden; " id="ajaxcontainer">
<div id="ajaxdata" style="word-wrap:break-word;text-align:left; color:white; position:absolute; bottom:0; padding:5px;">Loading</div>
</div>

<script>
	function togglefullscreen(){
		$("#ajaxcontainer").css("left", 0);
		$("#ajaxcontainer").css("top", 0);
		$("#ajaxcontainer").css("position", "fixed");
		$("#ajaxcontainer").css("height", "100%");

		ajaxcontainer.webkitRequestFullscreen(Element.ALLOW_KEYBOARD_INPUT);
		ajaxcontainer.mozRequestFullScreen();
		ajaxcontainer.requestFullscreen(); // Opera

		document.webkitExitFullscreen = backtonormal;
	}

	function fullscreenexit(){
		$("#ajaxcontainer").css("left", "auto");
		$("#ajaxcontainer").css("top", "auto");
		$("#ajaxcontainer").css("position", "relative");
		$("#ajaxcontainer").css("height", "400px");
	}

	document.addEventListener("fullscreenchange", function () {
		if(document.fullscreen == false){
			fullscreenexit();
		}
	}, false);

	document.addEventListener("mozfullscreenchange", function () {
		if(document.mozFullScreen == false){
			fullscreenexit();
		}
	}, false);

	document.addEventListener("webkitfullscreenchange", function () {
		if(document.webkitIsFullScreen == false){
			fullscreenexit();
		}
	}, false);
</script>