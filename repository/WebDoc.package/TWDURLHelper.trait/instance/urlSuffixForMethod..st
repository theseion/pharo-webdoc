t-url
urlSuffixForMethod: aMethod
	^ (aMethod methodClass isMeta 
			ifTrue: ['/class/method/'] 
			ifFalse:['/method/']), 
		aMethod selector.