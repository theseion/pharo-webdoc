uploaded
searchCss
	^ '
#search a:link, #search a:visited { 
	margin-right: 2px;
  	padding: 2px; 
	/*text-decoration: none; color: #05a;
  	border: 1px solid #d8d8e5;
  	-moz-border-radius: 3px; 
	-webkit-border-radius: 3px;
	background: #eaf0ff;*/
}
#search a:hover { 
	background: #f5faff; 
	color: #06b; 
}

#search a.active { 
  	background: #568; 
	padding-bottom: 20px; 
	color: #fff; 
	border: 1px solid #457; 
}

#search a.inactive { 
	color: #999; 
}
.frames #search { 
	display: none;
}
.inheritanceTree, .toggleDefines { 
	float: right; 
}

#searchResults {
	width: 100%;
	position: relative;
	color: #000;
	left: 0px;
	top: 0px;
	padding: 0px;
	max-height: 400px;
	overflow-y: auto;
	background: #fff; 
  	-moz-border-radius: 0 0 6px 6px;
  	-webkit-border-radius: 0 0 6px 6px;
}

#searchResults h1 { 
	margin-bottom: 0;
}
#searchResults p { 
	margin-top: 0; 
	margin-bottom: 25px; 
}
#searchResults ul { 
	padding-left: 0; 
}
#searchResults ul li { 
	list-style-type: none;
	line-height: 2em;
}

#searchResults ul li.r1 { 
	background: #f0f0f0;
}

#searchResults ul li.r2 { 
	background: #fafafa;
}

form.search .searchInput {
	padding: 7px;
}

form.search {
	position: fixed;
	right: 14px;
	top: -6px;
	width: 480px; 
  	margin-top: 3px;
  	color: #fff; 
	background: #05a; 
  	-moz-border-radius: 6px;
  	-webkit-border-radius: 6px;
	-webkit-box-shadow: 0 0 6px 6px rgba(0,0,0,0.1);
	-moz-box-shadow: 0 0 6px 6px rgba(0,0,0,0.1);
	box-shadow: 0 0 6px 6px rgba(0,0,0,0.1);
  	margin-bottom: 10px;
}

form.search input { 
	margin-left: 5px;
	width: 400px;
	border: 1px solid #99f;
	-moz-border-radius: 3px;
	font-family: monospace; 
}
	'