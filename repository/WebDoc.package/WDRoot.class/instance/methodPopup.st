accessing
methodPopup
	^ methodPopup ifNil: [ 
			methodPopup := self newChildView: WDMethodPopup].