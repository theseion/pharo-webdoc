routes
class: aClassName classMethod: aSelector
	<GET>
	<Path: '/class/{aClassName}/class/method/{aSelector}'>
	activeView := self methodView.
	activeView viewClass: (Smalltalk at: aClassName asSymbol).
	activeView selectClass: activeView viewClass class.
	activeView selectMethodNamed: aSelector asSymbol.