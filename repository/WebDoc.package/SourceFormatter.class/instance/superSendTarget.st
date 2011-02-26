private
superSendTarget
	| superMethod |
	superMethod := method methodClass superclass lookupSelector: method selector.
	superMethod ifNil: [ ^ nil].
	^ superMethod methodClass.