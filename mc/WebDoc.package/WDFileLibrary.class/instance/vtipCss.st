uploaded
vtipCss
	^ '
p#vtip { 
	display: none; 
	position: absolute; 
	padding: 0px; 
	left: 5px; 
	font-size: 0.8em; 
	background-color: white; 
	border: 1px solid #999; 
	-moz-border-radius: 5px; 
	-webkit-border-radius: 5px; 
	-moz-box-shadow: 0 0 5px 5px rgba(0,0,0,0.1);
	-webkit-box-shadow: 0 0 5px 5px rgba(0,0,0,0.1);
	box-shadow: 0 0 5px 5px rgba(0,0,0,0.1);
	z-index: 9999 
}

p#vtip iframe {
	border: none;
}

p#vtip #vtipArrow { 
	position: absolute; 
	top: -10px; 
	left: 5px 
}
'copyReplaceAll: String cr with: String lf