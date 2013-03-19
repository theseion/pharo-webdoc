routes
popUpClass: aClassName
	<get>
	<path: 'popup/class/{aClassName}.html'>
   <produces: 'text/html'>
	
	activeView := self classPopupView.
	activeView selectClass: (self classNamed: aClassName urldecoded).
	^ self render: activeView.