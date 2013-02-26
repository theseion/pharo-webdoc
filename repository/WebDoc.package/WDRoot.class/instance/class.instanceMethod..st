routes
class: aClassName instanceMethod: aSelector
	<GET>
	<Path: '/class/{aClassName}/method/{aSelector}'>
	| aClass |
	aClass := (Smalltalk at: aClassName asSymbol).
	self class: aClass viewClass: aClass selector: aSelector sourceOnly: false.