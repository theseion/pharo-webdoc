routes
class: aClassName instanceMethod: aSelector
	<get>
	<path: 'class/{aClassName}/method/{aSelector}.html'>
   <produces: 'text/html'>
	
	activeView := self methodView.
	activeView selectClass: (self classNamed: aClassName).
	activeView viewClass: activeView selectedClass.
	activeView selectMethodNamed: aSelector asSymbol