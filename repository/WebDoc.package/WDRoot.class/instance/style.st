as yet unclassified
style
	^ '
BODY {
	margin: 0px;
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
	left: 620px;
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