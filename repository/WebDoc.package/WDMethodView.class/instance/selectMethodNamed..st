accessing
selectMethodNamed: aSelector
	self method: (selectedClass methodDict at: aSelector ifAbsent: [ nil ])