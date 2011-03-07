rendering
renderSelector: aSelector inMessage: aMessage
	|anchor receiverContext receiverClass |
	aMessage ifNil: [
		^ html span 
			class: 'stSelector';
			with: aSelector value].
		
	receiverContext := self inferReceiverContext: aMessage.
	
	
	anchor := html anchor.
	receiverContext 
		ifNil: [ anchor url: '/doc/selector/list/', aMessage selector ]
		ifNotNil: [
			self 
				formatKnownSelector: aSelector 
				inMessage: aMessage 
				onClass: receiverContext 
				onAnchor: anchor].
		
	^ anchor 
		class: 'stSelector';
		with: aSelector value