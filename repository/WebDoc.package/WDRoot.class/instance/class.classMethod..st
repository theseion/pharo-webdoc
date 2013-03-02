routes
class: aClassName classMethod: aSelector
	<get>
	<path: '/class/{aClassName}/class/method/{aSelector}'>
	activeView := self methodView.
	activeView viewClass: (Smalltalk at: aClassName asSymbol).
	activeView selectClass: activeView viewClass class.
	activeView selectMethodNamed: aSelector asSymbol