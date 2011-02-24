as yet unclassified
selectorForcesLineBreak: aSelector
	aSelector = #ifTrue: ifTrue: [ ^ true ].
	aSelector = #ifFalse: ifTrue: [ ^ true ].
	^ false