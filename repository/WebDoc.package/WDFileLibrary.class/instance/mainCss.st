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

#packagesIframe {
	float: left;
	top: 0px;
	height: 100%;
	width: 100%;
}

#packages {
	float: left;
	position: absolute;
	top: 0px;
	height: 350px;
	width: 100%;
}

#classes {
	position: absolute;
	float: left;
	width: 100%;
	top: 355px;
	bottom: 0px;
}

#list {
	width: 100%;
	height: 100%;
	float: left;
}

#list2 {
	width: 100%;
	height: 100%;
	float: left;
}

#vdragbar{
	background-color: grey;
	width: 100%;
	height: 4px;
	position: absolute;
	left: 0px;
	bottom: -4px;
   cursor: row-resize;
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