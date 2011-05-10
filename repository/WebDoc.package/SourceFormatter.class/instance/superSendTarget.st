private
superSendTarget
	| superMethod |
	method methodClass isTrait ifTrue: [ ^ nil].
	superMethod := method methodClass superclass lookupSelector: method selector.
	superMethod ifNil: [ ^ nil].
	^ superMethod methodClass.