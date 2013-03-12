*WebDoc
asRelativeURLTo: otherURLOrString
	"yes I know the wrong way around, but I kept stupidly sticking to whatever seaside did"
	| relativePath otherURL |
	otherURL := otherURLOrString seasideUrl.
	relativePath := otherURL relativeTo: self.
	(otherURL path last includes: $.)
		ifTrue: [ relativePath := relativePath allButFirst ].
	^ WDRelativeUrl new path: relativePath