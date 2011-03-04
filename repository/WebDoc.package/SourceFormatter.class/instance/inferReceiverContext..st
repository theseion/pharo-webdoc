private
inferReceiverContext: aMessage
	| receiver implementors |
	aMessage isPragma ifTrue: [^nil].
	aMessage isSuperSend  ifTrue: [ ^ method methodClass].
	aMessage isSelfSend ifTrue: [ ^ method methodClass].
	
	receiver := aMessage receiver.
	
	implementors := SystemNavigation default allImplementorsOf: receiver selector.
	implementors size = 1 
		ifTrue: [ ^ implementors first methodClass].
		
		
	receiver isMessage 
		ifTrue: [receiver selector = #class 
			ifTrue: [ (self inferReceiverContext: receiver) 
				ifNotNilDo: [:instance| ^ instance class]]].
		
	(receiver isLiteral or: [receiver isVariable]) ifFalse: [ ^ nil ].

	receiver isLiteral ifTrue: [ ^ receiver value class].
	
	receiver := receiver name.
	receiver = 'thisContext' ifTrue: [ ^ MethodContext ].
	
	Smalltalk at: receiver asSymbol
		ifPresent: [:class| ^ class].
		
	^ nil.