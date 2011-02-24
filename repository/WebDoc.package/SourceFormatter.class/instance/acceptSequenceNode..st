as yet unclassified
acceptSequenceNode: aSequenceNode 
	self formatMethodCommentFor: aSequenceNode.
	self formatTemporariesFor: aSequenceNode.
	self formatStatementsFor: aSequenceNode