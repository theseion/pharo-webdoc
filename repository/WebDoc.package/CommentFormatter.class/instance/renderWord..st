visiting
renderWord: aString
	Smalltalk at: aString asSymbol 
		ifPresent: [ :class| ^ self formatClass: class].
		
	((aString matchesRegex: '[a-z][\w:]+\:') and: [(Symbol lookup: aString) isNil not])
		ifTrue: [ ^ self formatSymbol: aString value: aString].
	
	aString = 'thisContext'
		 ifTrue: [ ^ self formatThisContext].
	
	html withUrls: aString.