t-url
urlForSelector: aSelector
	^ self selectorBaseURL, 'list/', aSelector webdocEncoded, self urlHTMLSuffix