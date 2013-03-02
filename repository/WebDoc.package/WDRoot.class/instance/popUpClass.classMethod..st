routes
popUpClass: aClassName classMethod: aSelector
	<get>
	<path: 'popup/class/{aClassName}/class/method/{aSelector}.html'>
	activeView := self methodPopup.
	activeView viewClass: (Smalltalk at: aClassName asSymbol).
	activeView selectClass: activeView viewClass class.
	activeView selectMethodNamed: aSelector asSymbol