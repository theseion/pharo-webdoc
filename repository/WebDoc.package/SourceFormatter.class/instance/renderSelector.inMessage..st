rendering
renderSelector: aSelector inMessage: aMessage
	|url receiverContext |
	aMessage ifNil: [
		^ html span 
			class: 'stSelector';
			with: aSelector value].
		
	receiverContext := self inferReceiverContext: aMessage.
	
	receiverContext 
		ifNil: [ url := '/doc/selector/', aMessage selector ]
		ifNotNilDo: [ :receiver|
			 url := '/doc/class/', receiver class theNonMetaClass name, '#', (receiver class isMeta ifTrue: ['class/'] ifFalse: ['']), aMessage selector].
		
	^ html anchor 
		class: 'stSelector';
		url: url;
		with: aSelector value