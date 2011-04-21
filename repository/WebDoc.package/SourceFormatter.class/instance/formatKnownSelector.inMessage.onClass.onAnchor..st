rendering
formatKnownSelector: aSelector inMessage: aMessage onClass: aClass onAnchor: anchor
	| receiverContext receiverClass |
	receiverContext := aClass.
	anchor class: 'stFixedSelector'.
	
	receiverContext := self receiverContext: receiverContext FromMessage: aMessage.
	
	receiverClass := receiverContext isBehavior 
							ifFalse: [ receiverContext class] 
							ifTrue: [ receiverContext].
							
	anchor url: ('/doc/class/', receiverClass theNonMetaClass name, 
				'#', (receiverClass isMeta ifTrue: ['class/'] ifFalse: ['']), 'method/',
				aMessage selector).