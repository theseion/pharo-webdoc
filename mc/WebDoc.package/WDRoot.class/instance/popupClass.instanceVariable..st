routes
popupClass: aClassName instanceVariable: variableName
	<get>
	<path: 'popup/class/{aClassName}/instanceVariable/{variableName}.html'>
   <produces: 'text/html'>
	
	activeView := self instanceVariablePopupView.
	activeView 
		viewClass: (self classNamed: aClassName urldecoded);
		instVarName: variableName urldecoded asSymbol.
	^ self render: activeView.