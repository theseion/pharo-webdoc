rendering
formatKnownSelector: aSelector inMessage: aMessage onClass: aClass onAnchor: anchor
	| receiverContext receiverClass |
	receiverContext := aClass.
	anchor class: 'stFixedSelector'.
	
	aMessage isSuperSend 
		ifTrue: [ receiverContext := self superSendTarget ]
		ifFalse: [ receiverContext := (receiverContext lookupSelector: aMessage selector) methodClass].
	
	receiverClass := receiverContext isBehavior 
							ifFalse: [ receiverContext class] 
							ifTrue: [ receiverContext].
							
	anchor url: ('/doc/class/', receiverClass theNonMetaClass name, 
				'#', (receiverClass isMeta ifTrue: ['class/'] ifFalse: ['']), 
				aMessage selector).