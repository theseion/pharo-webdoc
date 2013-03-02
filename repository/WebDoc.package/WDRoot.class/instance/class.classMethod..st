routes
class: aClassName classMethod: aSelector
	<get>
	<path: 'class/{aClassName}/class/method/{aSelector}.html'>
   <produces: 'text/html'>

	activeView := self methodView.
	activeView viewClass: (self classNamed: aClassName).
	activeView selectClass: activeView viewClass class.
	activeView selectMethodNamed: aSelector asSymbol