*WebDoc
asRelativeURLTo: anotherURL
	"yes I know the wrong way around, but I kept stupidly sticking to whatever seaside did"
	| relativePath |
	relativePath := anotherURL seasideUrl relativeTo: self.
	(anotherURL path last includes: $.)
		ifTrue: [ relativePath := relativePath allButFirst ].
	^ WDRelativeUrl new path: relativePath