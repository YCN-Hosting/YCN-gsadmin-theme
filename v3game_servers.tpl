<script>
$(document).ready(function() {
	$('img, input').each(function() {
		if ($(this).attr('src') == 'buttons/edit.jpg') {
			// seperate onclick functions
			if($(this).parent().prop("tagName") == "A"){
				$(this).parent().addClass("btn");
				$(this).parent().html("Edit");
			}
			if($(this).parent().prop("tagName") == "DIV"){
				var onclickval	=	$(this).attr('onclick');
				if($(this).attr('id').length > 1){
					var idval	=	$(this).attr('id');
				}
				$(this).parent().html('<a class="btn" onclick="'+onclickval+'" id="'+idval+'">Edit</a>');
			}
		}
		else if ($(this).attr('src') == 'buttons/update.jpg') {
			// with onclick
			if($(this).parent().prop("tagName") == "DIV" ){
				var onclickval	=	$(this).attr('onclick');		
				$(this).parent().html('<a class="btn" onclick="'+onclickval+'">Update</a>');
			}
			else{
				$(this).replaceWith('<input type="submit" value="Update" class="btn">')
			}
		}
		else if ($(this).attr('src') == 'buttons/remove.jpg') {
			// with onclick
			if($(this).parent().prop("tagName") == "A"){
				$(this).parent().addClass("btn");
				$(this).parent().html("Remove");
			}
		}
		else if ($(this).attr('src') == 'buttons/install.jpg') {
			// with onclick
			if($(this).parent().prop("tagName") == "DIV"){
				var onclickval	=	$(this).attr('onclick');		
				$(this).parent().html('<a class="btn" onclick="'+onclickval+'">Install</a>');
			}
			if($(this).parent().prop("tagName") == "A"){
				$(this).parent().addClass("btn");
				$(this).parent().html("Install");
			}
		}
		else if ($(this).attr('src') == 'buttons/start.jpg') {
			// with onclick
			if($(this).parent().prop("tagName") == "A"){
				$(this).parent().addClass("btn");
				$(this).parent().html("Start");
			}
		}
		else if ($(this).attr('src') == 'buttons/stop.jpg') {
			// with onclick
			if($(this).parent().prop("tagName") == "A"){
				$(this).parent().addClass("btn");
				$(this).parent().html("Stop");
			}
		}
	});
	
	{if $view == "view"}
		$('div').each(function() {
			if(proceed == undefined){ var proceed = "1"; }
			if(proceed == "1"){
				if($(this).css("width") == "500px"){
					$(this).css("width", "100%");
					$(this).css("padding-left", "90px");
					$(this).attr("id", "extrashit");
					var proceed = "0";
				}
			}
			
			if($(this).html() == ""){
				$(this).css("height", "0px");
			}
		});
		
		$('h3').each(function() {
		$(this).replaceWith($('<h1>' + this.innerHTML + '</h1>'));
				$(this).css("margin-top", "0");
				
				$(this).css("margin-bottom", "0");
				$(this).css("clear", "both");
		});
		
		$('#extrashit h1').each(function() {
				$(this).css("margin-left", "-90px");
		});

		$('#extrashit div').each(function() {
			if($(this).css("width") == "400px"){
				$(this).css("padding-top", "7px");
				$(this).css("min-height", "38px");
			}
			else if($(this).css("width") == "200px"){
				$(this).css("padding-top", "7px");
				$(this).css("min-height", "38px");
			}
		});	
		$('select').each(function() {
				$(this).css("width", "180px");
				$(this).parent().css("padding-top", "0");
		});	
		$('.leftside').append('<div style="clear:both;"></div>');
		$("#extrashit").html($("#extrashit").html().replace("Instillation", 'Installation')); //l2spell Yaki -.-
	{/if}
});

</script>