visitor-double dispatching
visitSequenceNode: aSequenceNode 
	| statementsBlock |
	tempNames addAll: aSequenceNode temporaryNames.
	self formatMethodCommentFor: aSequenceNode.
	self formatTemporariesFor: aSequenceNode.
	
	statementsBlock := [ self formatStatementsFor: aSequenceNode ].
	(aSequenceNode needsMultipleLines 
	and: [ aSequenceNode parent isNil not
	and: [ aSequenceNode parent isMethod not ]])
		ifTrue: [ self indent: statementsBlock ]
		ifFalse: statementsBlock.
	