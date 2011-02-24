visitor
superSendTarget
	| superMethod |
	superMethod := method methodClass superclass lookupSelector: method selector.
	^ superMethod methodClass.