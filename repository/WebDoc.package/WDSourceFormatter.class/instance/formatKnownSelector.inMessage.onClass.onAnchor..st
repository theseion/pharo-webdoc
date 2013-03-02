rendering
formatKnownSelector: aSelector inMessage: aMessage onClass: aClass onAnchor: anchor
	| receiverContext receiverClass |
	receiverContext := aClass.
	anchor class: 'stFixedSelector'.
	
	receiverContext := self receiverContext: receiverContext fromMessage: aMessage.
	
	receiverClass := receiverContext isBehavior 
							ifFalse: [ receiverContext class] 
							ifTrue: [ receiverContext].
							
	anchor url: (self urlForMethod: receiverClass >> aMessage selector)