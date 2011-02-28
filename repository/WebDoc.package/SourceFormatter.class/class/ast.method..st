instance creation
ast: anAst method: aMethod
	^ self new 
		parseTree: anAst;
		method: aMethod