routes
popUpClass: aClassName
	<get>
	<path: 'popup/class/{aClassName}.html'>
	activeView := self classPopup.
	activeView selectClass: (Smalltalk at: aClassName asSymbol)