*WebDoc-testing
needsDot
	self parent isSequence ifTrue: [ ^ self isLast not ].
	
	^ false.