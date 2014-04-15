t-url
baseUrlForClass: aClass
	^ self relativeRootURL, (self urlSuffixForClass: aClass)