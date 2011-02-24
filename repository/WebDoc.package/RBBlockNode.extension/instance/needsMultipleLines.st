*WebDoc-testing
needsMultipleLines
	self blockVariables size > 2 ifTrue: [ ^ true].
	^ self body needsMultipleLines.