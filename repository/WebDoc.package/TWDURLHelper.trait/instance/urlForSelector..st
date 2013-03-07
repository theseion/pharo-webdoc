t-url
urlForSelector: aSelector
	^ self selectorBaseURL, '/list/', aSelector urlencoded, self urlHTMLSuffix