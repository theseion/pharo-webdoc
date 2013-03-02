rendering-formatting
formatStatementCommentFor: aNode 
	| comment |
	aNode statementComments ifEmpty: [ ^ self].
	self source isNil ifTrue: [^self].
	
	html span
		class: 'stComment';
		with: [
			aNode statementComments do: [:each | 
				| crs |
				crs := self newLinesFor: source startingAt: each first.
				(crs - 1 max: 0) timesRepeat: [ self break].
				comment := self source copyFrom: each first to: each last.
				(comment
					splitOn: Character cr)
						do: [:commentLine| html text: commentLine ]
						separatedBy: [ html break ]].
					
				comment size > 30 ifTrue: [ self break]]