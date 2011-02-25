as yet unclassified
dot: aNode
	aNode isPragma ifTrue: [^self].
	aNode needsDot ifTrue: [html text: $. ].
	self useBreaks ifFalse: [ html space ]