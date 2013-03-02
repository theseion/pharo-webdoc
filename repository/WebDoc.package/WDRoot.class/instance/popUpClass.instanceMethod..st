routes
popUpClass: aClassName instanceMethod: aSelector
	<get>
	<path: 'popup/class/{aClassName}/method/{aSelector}.html'>
   <produces: 'text/html'>
	
	activeView := self methodPopup.
	activeView selectClass: (self classNamed: aClassName).
	activeView viewClass: activeView selectedClass.
	activeView selectMethodNamed: aSelector asSymbol