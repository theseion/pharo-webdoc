*WebDoc-testing
needsMultipleLines
	self temporaries size > 2 ifTrue: [ ^ true].
	self comments ifNotEmpty: [ ^ true].
	
	(self statements isEmpty or: [self statements size > 1])
		ifTrue: [ ^ true].
	self statements first needsMultipleLines ifTrue: [  ^ true].
	
	(self comments anySatisfy: [ :each| each size> 15])
		ifTrue: [ ^ true].
	^ false.