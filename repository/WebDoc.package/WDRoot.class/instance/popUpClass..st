routes
popUpClass: aClassName
	<get>
	<path: 'popup/class/{aClassName}'>
	activeView := self classPopup.
	activeView selectClass: (Smalltalk at: aClassName asSymbol)