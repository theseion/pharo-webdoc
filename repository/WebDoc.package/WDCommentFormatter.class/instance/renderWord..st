visiting
renderWord: aString
	| symbol |
	symbol :=  aString asSymbol.
	Smalltalk at: symbol 
		ifPresent: [ :class| ^ self formatClass: class].
		
	(self symbolRegex matches: aString)
		ifTrue: [ ^ self formatSymbol: symbol value: aString].
	
	(aString first = $#)
		ifTrue: [ ^ self formatSymbol: aString allButFirst asSymbol value: aString].
	
	aString = 'thisContext'
		 ifTrue: [ ^ self formatThisContext].
	
	html text: aString.