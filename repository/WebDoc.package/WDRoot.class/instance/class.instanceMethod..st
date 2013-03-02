routes
class: aClassName instanceMethod: aSelector
	<get>
	<path: 'class/{aClassName}/method/{aSelector}.html'>
	activeView := self methodView.
	activeView selectClass: (Smalltalk at: aClassName asSymbol).
	activeView viewClass: activeView selectedClass.
	activeView selectMethodNamed: aSelector asSymbol