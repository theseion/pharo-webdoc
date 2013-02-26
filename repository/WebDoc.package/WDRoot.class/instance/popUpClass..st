routes
popUpClass: aClassName
	<GET>
	<Path: 'popup/class/{aClassName}'>
	activeView := self classPopup.
	activeView selectClass: (Smalltalk at: aClassName asSymbol).