routes
popupClassInstanceVariables: aClassName
	<get>
	<path: 'popup/class/{aClassName}/class/instanceVariable.html'>
   <produces: 'text/html'>
	
	activeView := self instanceVariablePopupView.
	activeView 
		viewClass: (self classNamed: aClassName urldecoded) class;
		instVarName: nil.
	^ self render: activeView.