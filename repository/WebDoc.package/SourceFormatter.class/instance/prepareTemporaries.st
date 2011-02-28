initialization
prepareTemporaries
	parseTree isMethod 
		ifTrue: [
			tempNames := parseTree body temporaryNames asSet.
			argumentNames := parseTree argumentNames asSet]
		ifFalse: [ 
			tempNames := OrderedCollection new.
			argumentNames := OrderedCollection new]