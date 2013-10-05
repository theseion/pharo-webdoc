t-url
poupURLForInstanceVariable: variableName inClass: aClass
	^ (self basePopupURLforClass: aClass), 
		(aClass isMeta 
			ifTrue: [ 'class/instanceVariable/'] 
			ifFalse:[ 'instanceVariable/' ]), variableName webdocEncoded, self urlHTMLSuffix