routes
class: aClassName
	<GET>
	<Path: '/class/{aClassName}'>
	activeView := self classView.
	activeView selectClass: (Smalltalk at: aClassName asSymbol).