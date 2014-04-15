accessing
selectorPopup
	^ selectorPopup ifNil: [ 
		selectorPopup := self newChildView: WDSelectorPopup].