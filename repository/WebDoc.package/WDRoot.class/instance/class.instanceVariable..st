routes
class: aClassName instanceVariable: variableName
	<get>
	<path: 'class/{aClassName}/instvar/{variableName}.html'>
   <produces: 'text/html'>
	
	activeView := self instVarList.
	activeView 
		viewClass: (self classNamed: aClassName);
		instVarName: variableName asSymbol