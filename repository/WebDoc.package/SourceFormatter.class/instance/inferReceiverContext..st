visitor
inferReceiverContext: aMessage
	| receiver |
	aMessage isSuperSend  ifTrue: [ ^self superSendTarget ].
	aMessage isSelfSend ifTrue: [ ^ self selfSendTarget: aMessage selector].
	
	receiver := aMessage receiver.
	(receiver isLiteral or: [receiver isVariable]) ifFalse: [ ^ nil ].

	receiver isLiteral ifTrue: [ ^ receiver value class].
	
	receiver := receiver name.
	receiver = 'thisContext' ifTrue: [ ^ MethodContext ].
	
	Smalltalk at: receiver asSymbol
		ifPresent: [:class| ^ class].
		
	^ nil.