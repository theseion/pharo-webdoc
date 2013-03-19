routes
popupInstanceVariables: aClassName
	<get>
	<path: 'popup/class/{aClassName}/instanceVariable.html'>
   <produces: 'text/html'>
	
	activeView := self instanceVariablePopupView.
	activeView 
		viewClass: (self classNamed: aClassName urldecoded);
		instVarName: nil.
	^ self render: activeView.