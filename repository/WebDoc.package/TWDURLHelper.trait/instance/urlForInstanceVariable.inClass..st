t-url
urlForInstanceVariable: variableName inClass: aClass
	^ (self baseUrlForClass: aClass), '/instvar/', variableName, self uflHTMLSuffix