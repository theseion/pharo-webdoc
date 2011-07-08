accessing
classPopup
	^ classPopup ifNil: [ 
			classPopup := self newChildView: WDClassPopup].