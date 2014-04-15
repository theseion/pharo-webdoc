*WebDoc-testing
needsMultipleLines
	self receiver needsMultipleLines ifTrue: [ ^ true].
	
	(self selectorParts anySatisfy: [ :el| el value = #ifFalse:]) ifTrue: [ ^ true]. 
	(self selectorParts anySatisfy: [ :el| el value = #ifTrue:]) ifTrue: [ ^ true]. 
	(self selector = #do:) ifTrue: [ ^ true]. 
	(self selector = #collect:) ifTrue: [ ^ true]. 
	(self selector = #doWithIndex:) ifTrue: [ ^ true]. 
	
	
	^ self arguments anySatisfy: #needsMultipleLines
	
	