private
selectorForcesLineBreak: aSelector
	aSelector = #ifTrue: ifTrue: [ ^ true ].
	aSelector = #ifFalse: ifTrue: [ ^ true ].
	aSelector = #collect: ifTrue: [ ^ true ].
	^ false