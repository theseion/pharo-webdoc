routes
popUpClass: aClassName classMethod: aSelector
	<get>
	<path: 'popup/class/{aClassName}/class/method/{aSelector}.html'>
   <produces: 'text/html'>
	
	activeView := self methodPopup.
	activeView viewClass: (self classNamed: aClassName urldecoded).
	activeView selectClass: activeView viewClass class.
	activeView selectMethodNamed: aSelector urldecoded asSymbol.
	^ self render: activeView.