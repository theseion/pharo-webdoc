routes
popupClass: aClassName instanceVariable: variableName
	<get>
	<path: 'popup/class/{aClassName}/instanceVariable/{variableName}.html'>
   <produces: 'text/html'>
	
	activeView := self instanceVariablePopupView.
	activeView 
		viewClass: (self classNamed: aClassName);
		instVarName: variableName asSymbol