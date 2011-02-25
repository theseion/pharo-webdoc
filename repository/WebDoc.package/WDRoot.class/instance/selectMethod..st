accessing
selectMethod: aMethod

	selectedMethod := aMethod.
	aMethod 
		ifNotNil: [session jumpToAnchor: self selectedClass name,aMethod selector]