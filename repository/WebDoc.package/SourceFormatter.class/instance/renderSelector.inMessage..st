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
			aMessage isSuperSend 
				ifTrue: [ receiverContext := self superSendTarget ]
				ifFalse: [ receiverContext := (receiverContext lookupSelector: aMessage selector) methodClass].
			receiverClass := receiverContext isBehavior 
				ifFalse: [ receiverContext class] 
				ifTrue: [ receiverContext].
			anchor url:'/doc/class/', receiverClass theNonMetaClass name, '#', (receiverClass isMeta ifTrue: ['class/'] ifFalse: ['']), aMessage selector.
			anchor class: 'stFixedSelector'].
		
	^ anchor 
		class: 'stSelector';
		with: aSelector value