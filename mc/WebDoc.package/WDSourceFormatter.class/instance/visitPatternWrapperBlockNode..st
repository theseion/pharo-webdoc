visitor-double dispatching
visitPatternWrapperBlockNode: aRBPatternWrapperBlockNode 
	self visitNode: aRBPatternWrapperBlockNode wrappedNode.
	self acceptBlockNode: aRBPatternWrapperBlockNode
		startBlockString: '`{'
		endBlockString: '}'