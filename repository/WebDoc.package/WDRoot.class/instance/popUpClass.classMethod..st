routes
popUpClass: aClassName classMethod: aSelector
	<GET>
	<Path: 'popup/class/{aClassName}/class/method/{aSelector}'>
	activeView := self methodPopup.
	activeView viewClass: (Smalltalk at: aClassName asSymbol).
	activeView selectClass: activeView viewClass class.
	activeView selectMethodNamed: aSelector asSymbol.