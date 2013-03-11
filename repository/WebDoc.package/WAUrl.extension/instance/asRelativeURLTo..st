*WebDoc
asRelativeURLTo: anotherURL
	
	^ WDRelativeUrl new path: (anotherURL seasideUrl relativeTo: self)