routes
popUpClass: aClassName
	<get>
	<path: 'popup/class/{aClassName}.html'>
   <produces: 'text/html'>
	
	activeView := self classPopup.
	activeView selectClass: (self classNamed: aClassName)