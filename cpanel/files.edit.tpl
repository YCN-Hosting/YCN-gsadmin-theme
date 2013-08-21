<h1>Edit File <a href="#" id="fulledit"><i class="icon-resize-full" style="float:right; margin-top:-13px;"></i></a></h1>

<i class="icon-file"></i><strong>Editing File</strong> : {{$path}}<br/><br/>
<form method="post" action="/files/edit{{$path}}">
{if $redirect}<input type="hidden" name="redirect" value="{{$redirect}}">{/if}
<textarea name="content" id="content" style="width:590px; height:400px;">{{$filecontent}}</textarea>
{literal}
<script>
(function($) { $.fn.numberfy = function() {
	if (navigator.appName == 'Opera' || navigator.appName == 'Microsoft Internet Explorer') return false;
	var column_BG = '#999', column_text = '#eaeaea';

	$(this).filter('textarea').each(function() {
		var container;
		$(this).appendTo(container = $('<div>').addClass('lineNumberfier').css({position: 'relative', height: $(this)[0].offsetHeight}).insertBefore($(this)));

		var lineAffectingStyles = {};
		var temp = ['font-size', 'font-family', 'line-height', 'text-indent', 'font-weight', 'text-decoration'];
		for (var i=0; i<temp.length; i++) lineAffectingStyles[temp[i]] = $(this).css(temp[i]);

		var measurer = $('<p>').appendTo('body').css({visibility: 'hidden', background: '#ddd', position: 'absolute'}).appendTo('body');
		$(this).data({measurer: measurer});

		$(this).add(measurer).css({overflowY: 'scroll', wordWrap: 'break-word', whiteSpace: 'pre-wrap'});
		$(this).css('resize', 'none');
		var col = $('<div>').css({background: column_BG, color: column_text, width: 30, position: 'absolute', overflow: 'hidden', left: 0, top: 0, height: $(this).height()}).addClass('lineNumsCol').prependTo($(this).parent());
		var css = {}, thiss = $(this);
		$.each(['paddingTop', 'paddingRight', 'paddingBottom', 'paddingLeft', 'borderTop', 'borderRight', 'borderBottom', 'borderLeft'], function(key, val) { css[val] = thiss.css(val); });
		col.css(lineAffectingStyles).css(css);

		measurer.css(lineAffectingStyles).css({width: $(this).width(), paddingLeft: $(this).css('padding-left'), paddingRight: $(this).css('padding-right')});

		if (navigator.appVersion.indexOf('Firefox') != -1) measurer.css({width: '-='+parseInt($(this).css('fontSize')) / 2});

		container.css('padding-left', col[0].offsetWidth);

		doLines($(this));
		$(this).keyup(function() { doLines($(this)); });

		$(this).scroll(function() { col[0].scrollTop = $(this)[0].scrollTop; });
	});

	function doLines(el) {
		var col = el.prev();
		if (!el.val()) return;
		col.empty();

		var lines = el.val().replace(/\n($|\n)/gm, '\n&nbsp;$1').split(/\n/g);
		var lineHeights = [];
		for (var i=0; i<lines.length; i++) {
			el.data('measurer').text(lines[i]);
			lineHeights.push(el.data('measurer')[0].offsetHeight);
		}

		for (var i=0, len = lineHeights.length; i<len; i++) {
			var heights_upToThisLine = lineHeights.slice(0, i);
			var YPos = (function() { var b = 0; for (var i in heights_upToThisLine) b += heights_upToThisLine[i]; return b; })() + 2;
			col.append($('<span>', {text: i+1}).css({position: 'absolute', top: YPos}));
		}
		col[0].scrollTop = el[0].scrollTop;
	}
} })(jQuery);
$(function() { $('#content').numberfy(); });
</script>
{/literal}
<br />

	<div style="position:fixed; background-color:white; height:40px; top:25px; left:25px; display:none;" id="editorhead">
		<div class="navbar navbar-static-top">
			<div class="navbar-inner">
				<a class="brand" href="#">YCN text editor</a>
				<ul class="nav">
					<li class="divider-vertical"></li>
					<li class=""><a>{{$path}}</a></li>
				</ul>
		
				<div style="width:20px; float:right; padding-top:13px;">
					<a href="#" id="exitfull"><i class="icon-remove"></i></a>
				</div>
			</div>
		</div>
	</div>
	{literal}
	<script>
		function fullresize(){
			$('#content').width($(window).width()-60).height($(window).height()-90);
			$("#content").css("position","fixed");
			$("#content").css("top","65px");
			$("#content").css("left","25px");
			$("#content").css("margin-left","0px");
			$("#editorhead").show();
			$('#editorhead').width($(window).width()-46);
		}
		
		function fullexit(){
			$('#content').width("590px").height("400px");
			$("#content").css("position","absolute");
			$("#content").css("top","0");
			$("#content").css("left","0");
			$("#content").css("margin-left","44px");
			$("#editorhead").hide();
		}
	
		$("#fulledit").click(function() {
			fullresize();
		});
		
		$("#exitfull").click(function() {
			fullexit();
		});		
		
		$(window).resize(function() {
			if($("#content").css("left") == "25px"){
				fullresize();
			}			
		});
	</script>
	{/literal}

<input type="submit" value="Save File" class="btn" />
</form>