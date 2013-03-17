*WebDoc
asRelativeURLTo: otherURLOrString

	| relativePath otherURL |
	otherURL := otherURLOrString seasideUrl.
	relativePath := otherURL relativeTo: self.
	^ WDRelativeUrl new path: relativePath