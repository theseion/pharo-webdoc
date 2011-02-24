as yet unclassified
renderMethodViewOn: html
	
	methodView selectMethod: classView selectedMethod.
	html render: methodView.