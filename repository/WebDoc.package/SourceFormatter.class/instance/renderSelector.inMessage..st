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
		ifNotNilDo: [ :receiver|
			receiverClass := receiver isBehavior ifFalse: [ receiver class] ifTrue: [ receiver].
			anchor url:'/doc/class/', receiverClass theNonMetaClass name, '#', (receiverClass isMeta ifTrue: ['class/'] ifFalse: ['']), aMessage selector.
			anchor class: 'stFixedSelector'].
		
	^ anchor 
		class: 'stSelector';
		with: aSelector value