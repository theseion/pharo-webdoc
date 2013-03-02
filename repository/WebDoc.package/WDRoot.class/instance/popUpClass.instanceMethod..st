routes
popUpClass: aClassName instanceMethod: aSelector
	<get>
	<path: 'popup/class/{aClassName}/method/{aSelector}.html'>
	activeView := self methodPopup.
	activeView selectClass: (Smalltalk at: aClassName asSymbol).
	activeView viewClass: activeView selectedClass.
	activeView selectMethodNamed: aSelector asSymbol