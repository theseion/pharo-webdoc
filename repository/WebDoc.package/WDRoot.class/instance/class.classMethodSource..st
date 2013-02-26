routes
class: aClassName classMethodSource: aSelector
	<GET>
	<Path: '/source/class/{aClassName}/class/method/{aSelector}'>
	| aClass |
	aClass := (Smalltalk at: aClassName asSymbol).
	self class: aClass class viewClass: aClass selector: aSelector sourceOnly: true.