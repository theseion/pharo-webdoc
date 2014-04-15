visitor-double dispatching
visitPatternBlockNode: aRBPatternBlockNode 
	self 
		acceptBlockNode: aRBPatternBlockNode
		startBlockString: '`{'
		endBlockString: '}'