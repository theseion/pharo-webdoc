visitor-double dispatching
acceptMethodNode: aMethodNode 
	self formatMethodPatternFor: aMethodNode.
	self indent: [
		self formatMethodCommentFor: aMethodNode.
		self formatPragmasFor: aMethodNode.
		aMethodNode body statements notEmpty 
			ifTrue: [ self visitNode: aMethodNode body ]]