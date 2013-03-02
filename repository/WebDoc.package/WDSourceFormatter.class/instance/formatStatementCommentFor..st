rendering-formatting
formatStatementCommentFor: aNode 
	| source comment |
	aNode statementComments ifEmpty: [ ^ self].
	source := aNode source.
	source isNil ifTrue: [^self].
	
	html span
		class: 'stComment';
		with: [
			aNode statementComments do: [:each | 
				| crs |
				crs := self newLinesFor: source startingAt: each first.
				(crs - 1 max: 0) timesRepeat: [ self break].
				comment := source copyFrom: each first to: each last.
				html text: comment.
				comment size > 30 ifTrue: [ self break].]]