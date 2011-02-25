rendering-formatting
formatStatementsFor: aSequenceNode 
	| statements |
	statements := aSequenceNode statements.
	statements isEmpty ifTrue: [^self].
	
	1 to: statements size - 1 do: [:i | |statement|
		statement := statements at: i. 
		self visitNode: statement.
		aSequenceNode isArray
			ifTrue: [ html text: $. ]. 
		self break.
		self formatStatementCommentFor: statement.].
		
	self visitNode: statements last.
	self formatStatementCommentFor: statements last