as yet unclassified
formatStatementsFor: aSequenceNode 
	| statements |
	statements := aSequenceNode statements.
	statements isEmpty ifTrue: [^self].
	
	1 to: statements size - 1 do: [:i | 
		self visitNode: (statements at: i).
		aSequenceNode isArray
			ifTrue: [ html text: $. ]. 
		html break.
		self formatStatementCommentFor: (statements at: i).].
		
	self visitNode: statements last.
	self formatStatementCommentFor: statements last