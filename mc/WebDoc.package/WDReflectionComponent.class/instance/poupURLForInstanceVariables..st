t-url
poupURLForInstanceVariables: aClass
	^ (self basePopupURLforClass: aClass), 
		(aClass isMeta 
			ifTrue: [ 'class/instanceVariable'] 
			ifFalse:[ 'instanceVariable' ]), self urlHTMLSuffix