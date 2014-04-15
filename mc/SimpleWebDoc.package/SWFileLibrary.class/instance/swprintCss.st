uploaded
swprintCss
	^ '
body {
    font-family: sans-serif;
    color: #000;
    font-size: 0.7em;
}


#navigation {
	display: none;
}

#wrapper{
	margin: 0px;
	padding: 0px;
}

.name {
	color: #000;
}

.class {
    margin-top: 10px;
    padding-bottom: 5px;
    border-bottom: 2px solid;
}

.class > .name {
    font-family: sans-serif;
    background-color: rgba(220, 220, 220, 0.5);
    font-weight: bold;
    text-decoration: underline;
    padding: 5px;}

.class > .comment {
    padding: 5px;
}

.selector {
    margin-left: 20px;
}

.selector > .name {
    font-size: 1.0em;
    font-weight: bold;
    margin-top: 5px;
}

.selector  .class-side {
    text-decoration: underline;
    font-style:italic;
}

.selector > .comment{
    margin-left: 10px;
}


#package {
	width: 100%;	
}
'