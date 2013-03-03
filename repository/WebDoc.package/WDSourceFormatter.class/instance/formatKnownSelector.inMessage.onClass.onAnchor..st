rendering
formatKnownSelector: aSelector inMessage: aMessage onClass: aClass onAnchor: anchor
	| receiverContext receiverClass |
	receiverContext := aClass.
	anchor class: 'stFixedSelector'.
	
	receiverContext := self receiverContext: receiverContext fromMessage: aMessage.
	
	receiverClass := receiverContext isBehavior 
							ifFalse: [ receiverContext class] 
							ifTrue: [ receiverContext].
	
	"sometimes classes send self messages that are not properly implemented"
	receiverClass methodDict 
		at: aMessage selector
		ifPresent: [ :selector | 
			^ anchor url: (self urlForMethod: selector)].
		
	"otherwise return a default selector link"
	anchor url: (self urlForSelector: aMessage selector) 