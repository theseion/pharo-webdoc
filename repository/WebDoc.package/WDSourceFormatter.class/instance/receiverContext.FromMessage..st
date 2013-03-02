private
receiverContext: receiverContext fromMessage: anRBMessageNode
	"Return the receiver class for a given message node"
	anRBMessageNode isSuperSend 
		ifTrue: [ ^ self superSendTarget ] .
		
	 (receiverContext lookupSelector: anRBMessageNode selector)
		ifNotNilDo: [ :aMethod | ^ aMethod methodClass ].
	
	^ nil