uploaded
mainJs
	^ '
$(document).ready(function() {
   $("#dragbar").mousedown(function(e) {
        e.preventDefault();
        $(document).mousemove(function(e){
          $("#position").html(e.pageX + ", " + e.pageY);
          $("#sidebar").css("width", e.pageX-2);
          $("#main").css("left", e.pageX+2);
       })
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
});
'