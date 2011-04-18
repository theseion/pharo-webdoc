accessing
selectorView
	^ selectorView ifNil: [ 
			selectorView := WDSelectorList new].