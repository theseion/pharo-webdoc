as yet unclassified
acceptSequenceNode: aSequenceNode 
	tempNames addAll: aSequenceNode temporaryNames.
	self formatMethodCommentFor: aSequenceNode.
	self formatTemporariesFor: aSequenceNode.
	self formatStatementsFor: aSequenceNode