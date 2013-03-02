t-url
urlForSelector: aSelector
	^ self selectorBaseURL, '/list/', aSelector, self urlHTMLSuffix