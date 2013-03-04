t-url
popupURLForClass: aClass
	^ self popupURL, (self urlSuffixForClass: aClass), self urlHTMLSuffix