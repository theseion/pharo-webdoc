accessing
classNamed: aClassName 
	^ (Smalltalk 
		at: aClassName asSymbol 
		ifAbsent: [ self respondNotFound ])