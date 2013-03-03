uploaded
swstyleCss
	^ '
body {
    background-color:  #F7F7F7;
    font-family: Helvetica Neue, Arial, Helvetica, Geneva, sans-serif;
    background-image: url(http://pharo-project.org/images/body.png);
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: -500px 0;
}

#navigation {
	float: left;
	width: 300px;
	overflow: hidden;
}

#navigation ul {
	padding: 0px;
}

#navigation li {
	list-style: none;
}

a {
	color: #616161;
	font-family: ''Myriad Pro'', ''Lucida Grande'', Helvetica, sans-serif;
	font-size: 0.9em;
	font-weight: bold;
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}

div#links {

}

div#links a {
	padding: 0px 10px 0px 10px;
}

#package {
	float: left;
	width: 700px;	
}

#package h1 {
	color: #0D66AF;
	text-align: center;
}

#wrapper {    
    margin: auto;
	 width: 1000px;
}

.name {
	color: #0D66AF;
}


.class {
    margin-top: 10px;
}

.class > .name {
    margin: auto;
    font-family: Georgia, serif;;
    background-color: rgba(220, 220, 220, 0.5);
    font-size: 1.7em;
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
    width: 90%;
    margin: auto;
}

div#links {
}

div#links a{
}
'