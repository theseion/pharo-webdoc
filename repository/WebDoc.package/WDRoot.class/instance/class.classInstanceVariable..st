routes
class: aClassName classInstanceVariable: variableName
	<get>
	<path: 'class/{aClassName}/class/instvar/{variableName}.html'>
   <produces: 'text/html'>
	
	activeView := self instVarList.
	activeView 
		viewClass: (self classNamed: aClassName) class;
		instVarName: variableName asSymbol