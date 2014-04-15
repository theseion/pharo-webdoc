accessing
selector: anObject
	selector = anObject
		ifTrue: [ ^ self ].
	selector := anObject.
	items := nil