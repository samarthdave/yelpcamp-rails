var has_loaded = false;
var ready = function() {
	setTimeout(function(){
		$(".alert").fadeOut();
	}, 3000);
}

if(!has_loaded) {
	$(document).ready(ready);
}

$(document).bind('turbolinks:visit', ready);

function imgerror(image) {
	image.onerror = "";
	image.src = "http://placehold.it/1280x720";
	return true;
}