initialization
prepareTemporaries
	ast isMethod 
		ifTrue: [
			tempNames := ast body temporaryNames asSet.
			argumentNames := ast argumentNames asSet]
		ifFalse: [ 
			tempNames := OrderedCollection new.
			argumentNames := OrderedCollection new]