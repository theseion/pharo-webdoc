uploaded
mainCss
	^ '
body,html {
	width:	100%;
	height: 100%;
	padding: 0;
	margin: 0;
	overflow-y: hidden;
}

iframe {
	padding: 0;
	margin: 0;
	border: 0;
}

#main {
   float: right;
   position: absolute;
   top: 0px;
   bottom: 0px;
   right: 0px;
   left: 410px;
}

#list {
	width: 100%;
	height: 100%;
	float: left;
}

#sidebar{
   width: 400px;
   float: left;
   position: absolute;
   top: 0px;
   bottom: 0px;
}

#dragbar{
	background-color: grey;
	height:100%;
	width: 4px;
	position: absolute;
	top: 0px;
	right: -4px;
   cursor: col-resize;
}
'