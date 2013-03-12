accessing
items
	^ items ifNil: [ items := self initializeItems ]