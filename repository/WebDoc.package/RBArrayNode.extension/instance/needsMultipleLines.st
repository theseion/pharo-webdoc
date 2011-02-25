*WebDoc-testing
needsMultipleLines
	(self statements anySatisfy: [ :each| each needsMultipleLines] )
		ifTrue: [^ true].
	^ false.