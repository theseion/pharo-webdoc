hooks
initialRequest: aRequest
	
	| uriList classIndex |
	super initialRequest: aRequest.
	uriList := aRequest uri path.
	classIndex := uriList indexOf: 'class'.
	(classIndex > 0 and: [classIndex ~~ uriList size])
		ifTrue: [
			| classString classSymbol class methodIndex |
			classString := uriList at: (classIndex +1).
			classSymbol := Symbol readFromString: ('#', classString).
			class := Smalltalk at: (classSymbol) ifAbsent: [^self].
			self selectClass: class.
			methodIndex := uriList indexOf: 'method'.
			(methodIndex > 0 and: [methodIndex ~~ uriList size])
				ifTrue: [
					| methodString methodSymbol method |
					methodString := uriList at: (methodIndex +1).
					methodSymbol := Symbol readFromString: ('#', methodString).
					method := class methodDict at: methodSymbol ifAbsent:[^ self].
					self selectMethod: method]]
	"I should do the same for methods"