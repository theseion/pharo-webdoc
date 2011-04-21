routes
popUpClass: aClassName instanceMethod: aSelector
	<GET>
	<Path: 'popup/class/{aClassName}/method/{aSelector}'>
	activeView := self methodPopup.
	activeView selectClass: (Smalltalk at: aClassName asSymbol).
	activeView viewClass: activeView selectedClass.
	activeView selectMethodNamed: aSelector asSymbol.