t-url
poupURLForInstanceVariable: variableName inClass: aClass
	^ (self basePopupURLforClass: aClass), 
		(aClass isMeta 
			ifTrue: [ '/class/instanceVariable/'] 
			ifFalse:[ '/instanceVariable/' ]), variableName urlencoded, self urlHTMLSuffix