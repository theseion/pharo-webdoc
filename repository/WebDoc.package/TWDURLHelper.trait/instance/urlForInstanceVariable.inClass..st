rendering-formatting
urlForInstanceVariable: variableName inClass: aClass
	^ (self baseUrlForClass: aClass), '/instvar/', variableName