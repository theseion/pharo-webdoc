routes
popupClass: aClassName classInstanceVariable: variableName
	<get>
	<path: 'popup/class/{aClassName}/class/instanceVariable/{variableName}.html'>
   <produces: 'text/html'>
	
	activeView := self instanceVariablePopupView.
	activeView 
		viewClass: (self classNamed: aClassName) class;
		instVarName: variableName asSymbol.
	^ self render: activeView.