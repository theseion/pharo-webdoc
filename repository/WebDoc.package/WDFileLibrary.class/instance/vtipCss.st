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
	border: 1px solid #a6c9e2; 
	-moz-border-radius: 5px; 
	-webkit-border-radius: 5px; 
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
'