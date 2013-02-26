routes
class: aClassName instanceMethodSource: aSelector
	<GET>
	<Path: '/source/class/{aClassName}/method/{aSelector}'>
	| aClass |
	aClass := (Smalltalk at: aClassName asSymbol).
	self class: aClass viewClass: aClass selector: aSelector sourceOnly: true.