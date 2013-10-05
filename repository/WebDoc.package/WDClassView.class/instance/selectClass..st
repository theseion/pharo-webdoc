accessing
selectClass: aClass
	selectedClass := aClass.
	(selectedClass isBehavior or: [ selectedClass isTrait ])
		ifFalse: [
			"most probably one of the constants"
			selectedClass := selectedClass class]