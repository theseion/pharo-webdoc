uploaded
mainJs
	^ '
	
function createFrameResizing() {
	$("#dragbar").draggable({ axis: "x", iframeFix: true});
	$("#vdragbar").draggable({ 
		axis: "y", 
		iframeFix: true,
		drag: function(e, ui) {
	        $(document).mousemove(function(e){
		          $("#position").html(e.pageX + ", " + e.pageY);
		          $("#sidebar").css("width", e.pageX-2);
		          $("#main").css("left", e.pageX+2);
	       })}
    });

   $("#vdragbar").mousedown(function(e) {
        e.preventDefault();
		
        $(document).mousemove(function(e){
          $("#position").html(e.pageX + ", " + e.pageY);
          $("#packages").css("height", e.pageY-2);
          $("#classes").css("top", e.pageY+2);
       })
    });

   $(document).mouseup(function(e){
       $(document).unbind("mousemove");
	})
}


function createFrameBookmarks() {
	createFrameBookmark($("iframe#packageList"));
	createFrameBookmark($("iframe#classList"));
	createFrameBookmark($("iframe#classView"));
}

var registeredFrames = [];

function createFrameBookmark(iframe) {
	iframe.load(function() {
		var state = {}
		var src = this.contentWindow.location.href;
		if (src && src.length > 0) {
			if (src.indexOf("http://") == 0) {
				state[this.name] =  src.substr(window.location.href.split("#")[0].length);
			} else {
				state[this.name] =  src;
			}
			$.bbq.pushState(state);
		}
	});
	registeredFrames.push(iframe.get(0));
}

$(window).bind( "hashchange", function(e) {
	for (i in registeredFrames) {
		var frame = registeredFrames[i]
		var url = $.bbq.getState(frame.name, true) || false;
		if (url) {
			url = window.location.href.split("#")[0] + url;
			if (frame.contentWindow.location.href != url && url) {
				frame.src = url;
			}
		}
	}
})

// =========================================================================
$(createFrameResizing);
$(createFrameBookmarks);
'