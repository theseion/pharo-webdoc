accessing
selectorView
	^ selectorView ifNil: [ 
			selectorView := self newChildView: WDSelectorList].