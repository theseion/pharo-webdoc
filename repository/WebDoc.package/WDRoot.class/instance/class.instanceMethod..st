routes
class: aClassName instanceMethod: aSelector
	<GET>
	<Path: '/class/{aClassName}/method/{aSelector}'>
	activeView := self methodView.
	activeView selectClass: (Smalltalk at: aClassName asSymbol).
	activeView viewClass: activeView selectedClass.
	activeView selectMethodNamed: aSelector asSymbol.