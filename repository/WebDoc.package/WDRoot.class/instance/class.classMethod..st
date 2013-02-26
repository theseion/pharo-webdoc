routes
class: aClassName classMethod: aSelector
	<GET>
	<Path: '/class/{aClassName}/class/method/{aSelector}'>
	| aClass |
	aClass := (Smalltalk at: aClassName asSymbol).
	self class: aClass class viewClass: aClass selector: aSelector sourceOnly: false.