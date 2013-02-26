accessing
method: anObject

	method := anObject.
	selector := anObject ifNotNil: [ anObject selector ].