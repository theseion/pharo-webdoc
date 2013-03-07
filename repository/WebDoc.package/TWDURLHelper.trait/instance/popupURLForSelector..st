t-url
popupURLForSelector: aSymbol
	^ self popupURL, '/selector/list/', aSymbol urlencoded, self urlHTMLSuffix