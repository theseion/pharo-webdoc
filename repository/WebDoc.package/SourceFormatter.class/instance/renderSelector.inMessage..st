rendering
renderSelector: aSelector inMessage: aMessage
	|url receiverContext |
	aMessage ifNil: [
		^ html span 
			class: 'stSelector';
			with: aSelector value].
		
	receiverContext := self inferReceiverContext: aMessage.
	
	receiverContext 
		ifNil: [ url := '/selector/', aMessage selector ]
		ifNotNilDo: [ :receiver|
			 url := '/class/', receiver name, '/method/', aMessage selector].
		
	^ html anchor 
		class: 'stSelector';
		url: url;
		with: aSelector value