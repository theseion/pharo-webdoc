private
inferReceiverContext: aMessage
	| receiver |
	aMessage isPragma ifTrue: [^nil].
	aMessage isSuperSend  ifTrue: [ ^ method methodClass].
	aMessage isSelfSend ifTrue: [ ^ method methodClass].

	self class implementors 
		at: aMessage selector 
		ifPresent: [ :implementors|
			implementors size = 1 
				ifTrue: [ ^ implementors first methodClass]].
		
	receiver := aMessage receiver.
	
			
	self flag: 'Refactor out the method inferer into the compiler'.
	
	receiver isMessage 
		ifTrue: [
			receiver selector = #class 
			ifTrue: [ (self inferReceiverContext: receiver) 
				ifNotNilDo: [:instance| ^ instance class]]].
		
	(receiver isLiteral not and: [receiver isVariable not]) 
		ifTrue: [ ^ nil ].

	receiver isLiteral 
		ifTrue: [ ^ receiver value class].
	
	receiver := receiver name.
	receiver = 'thisContext' ifTrue: [ ^ MethodContext ].
	
	Smalltalk at: receiver asSymbol
		ifPresent: [:class| ^ class class].
		
	^ nil.