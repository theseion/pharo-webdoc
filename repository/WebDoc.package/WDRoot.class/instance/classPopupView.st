accessing
classPopupView
	^ classPopup ifNil: [ 
			classPopup := self newChildView: WDClassPopup].