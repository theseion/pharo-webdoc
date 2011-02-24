hooks
initialRequest: aRequest
	
	| uriList classIndex |
	super initialRequest: aRequest.
	uriList := aRequest uri path.
	classIndex := uriList indexOf: 'class'.
	(classIndex > 0 and: [classIndex ~~ uriList size])
		ifTrue: [
			| classString classSymbol class |
			classString := uriList at: (classIndex +1).
			classSymbol := Symbol readFromString: ('#', classString).
			class := Smalltalk at: (classSymbol).
			packageTree selectClass: class.
			packageTree selectPackage: (RPackage organizer packageOfClassNamed: classString )]
	"I should do the same for methods"