private
newLinesFor: aString startingAt: anIndex 
	| count cr lf index char |
	cr := Character cr.
	lf := Character lf.
	count := 0.
	index := anIndex - 1.
	[index > 0 and: 
			[char := aString at: index.
			char isSeparator]] 
		whileTrue: 
			[char == lf 
				ifTrue: 
					[count := count + 1.
					(aString at: (index - 1 max: 1)) == cr ifTrue: [index := index - 1]].
			char == cr ifTrue: [count := count + 1].
			index := index - 1].
	^count