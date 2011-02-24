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
	float: left; 
	overflow-y:scroll;
}

.classMethodContainer {
	position: absolute;
	left: 320px;
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

.stIndent {
	margin-left: 3em;r
}
.stSelector {
	color: #005500;
}

.stInstanceVariable {
	color: #0000AA;
}

.stCharacterLiteral { color: #663300 }
.stTempVariable {
	color: #6666BB;
}

.stSelf {
	color: #00AAAA;
}
.stSuper {
	color: #AA0000;
}

.stFalse, .stTrue, .stNil {color: #660000;}
	'