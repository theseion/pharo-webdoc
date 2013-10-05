accessing
updateImplementors
	implementors := Dictionary new.
	self environment classesAndTraitsDo: [ :class |
		class selectorsAndMethodsDo: [ :selector :method | 
			(implementors 
				at: selector 
				ifAbsentPut: [ OrderedCollection new ]) add: method ]].
	