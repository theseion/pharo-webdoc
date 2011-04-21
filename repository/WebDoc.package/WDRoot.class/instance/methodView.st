accessing
methodView
	^ methodView ifNil: [ 
			methodView := WDMethodView new].