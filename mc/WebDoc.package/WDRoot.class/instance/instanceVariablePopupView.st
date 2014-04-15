accessing
instanceVariablePopupView
	^ instanceVariablePopupView ifNil: [ 
		instanceVariablePopupView := self newChildView: WDInstanceVariablePopup ].