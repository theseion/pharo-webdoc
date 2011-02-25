as yet unclassified
dot: aNode
	aNode needsDot ifTrue: [html text: $. ].
	self useBreaks ifFalse: [ html space ]