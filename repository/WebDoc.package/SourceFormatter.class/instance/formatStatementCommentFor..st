as yet unclassified
formatStatementCommentFor: aNode 
	| source |
	aNode statementComments ifEmpty: [ ^ self].
	source := aNode source.
	source isNil ifTrue: [^self].
	
	html span
		class: 'stComment';
		with: [
			aNode statementComments do: [:each | 
				| crs |
				crs := self newLinesFor: source startingAt: each first.
				(crs - 1 max: 0) timesRepeat: [ html break].
				html text: (source copyFrom: each first to: each last)]]