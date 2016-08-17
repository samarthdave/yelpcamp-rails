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
var counter = 0;
function changeBG(){
    var imgs = [
        "url(https://images.unsplash.com/photo-1444012236767-1b471c68781c?dpr=2&fit=crop&fm=jpg&h=825&ixlib=rb-0.3.5&q=50&w=1450)",
        "url(https://images.unsplash.com/photo-1444012104069-996724bf4a0a?dpr=2&fit=crop&fm=jpg&h=825&ixlib=rb-0.3.5&q=50&w=1450)",
        "url(https://images.unsplash.com/photo-1445888761652-fc13cbb0d819?dpr=2&fit=crop&fm=jpg&h=825&ixlib=rb-0.3.5&q=50&w=1450)",
        "url(https://images.unsplash.com/photo-1445888985293-8e1b904061c4?dpr=2&fit=crop&fm=jpg&h=825&ixlib=rb-0.3.5&q=50&w=1450)",
        "url(https://images.unsplash.com/photo-1444228250525-3d441b642d12?dpr=2&fit=crop&fm=jpg&h=825&ixlib=rb-0.3.5&q=50&w=1450)",
        "url(https://images.unsplash.com/photo-1444210971048-6130cf0c46cf?dpr=2&fit=crop&fm=jpg&h=825&ixlib=rb-0.3.5&q=50&w=1450)",
        "url(https://images.unsplash.com/photo-1414016642750-7fdd78dc33d9?dpr=2&fit=crop&fm=jpg&h=825&ixlib=rb-0.3.5&q=50&w=1450)"
      ]
    if(counter === imgs.length) counter = 0;
    $("body").css("background-image", imgs[counter]);
    counter++;
}

setInterval(changeBG, 5000);


