accessing
methodView
	^ methodView ifNil: [ 
		methodView := self newChildView: WDMethodView].