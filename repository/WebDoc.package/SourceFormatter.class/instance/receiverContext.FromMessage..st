as yet unclassified
receiverContext: receiverContext FromMessage: aMessage
	aMessage isSuperSend 
		ifTrue: [ ^ self superSendTarget ] .
		
	 (receiverContext lookupSelector: aMessage selector)
		ifNotNilDo: [ :aMethod| ^ aMethod methodClass].
	
	^ nil