t-url
urlForMethod: aMethod
	^ (self urlForClass: aMethod methodClass theNonMetaClass), 
		(aMethod methodClass isMeta 
			ifTrue: ['#class/method/'] 
			ifFalse:['#method/']), 
		aMethod selector.