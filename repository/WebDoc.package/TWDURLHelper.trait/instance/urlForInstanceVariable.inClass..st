t-url
urlForInstanceVariable: variableName inClass: aClass
	^ (self baseUrlForClass: aClass), '/instvar/', variableName urlencoded, self urlHTMLSuffix