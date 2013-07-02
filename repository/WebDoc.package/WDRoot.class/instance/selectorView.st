accessing
selectorView
	^ selectorView ifNil: [ 
		selectorView := self newChildView: WDSelectorList.
		selectorView environment: self environment.
		selectorView ].