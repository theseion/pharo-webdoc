t-url
urlForInstanceVariable: variableName inClass: aClass
	^ (self baseUrlForClass: aClass), 
		(aClass isMeta 
			ifTrue: [ '/class/instvar/'] 
			ifFalse:[ '/instvar/' ]), variableName urlencoded, self urlHTMLSuffix