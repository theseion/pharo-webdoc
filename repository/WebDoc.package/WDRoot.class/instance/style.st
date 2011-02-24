hooks
style
	^ '
BODY {
	margin: 0px;
	padding: 0px;
}

HTML {
	margin: 0px;
	padding: 0px;
}

#packageTree {
	position: fixed;
	height: 100%;
	width: 300px;
	overflow-y:scroll;
}
#methodList {
	position: fixed;
	height: 100%;
	width: 300px;
	left: 300px;
	overflow-y:scroll;
}
.classMethodContainer {
	position: absolute;
	left: 300px;
}
.classView {
	float: left;
}
.methodView {
	float: left;
}

.methodSource {
	float: left;
}
.selectorList {
	position: relative;
	overflow-y: scroll;
	height: 100%;
	width: 350px;
	float: left;
}


.method_details {
	clear: both;
}
	'