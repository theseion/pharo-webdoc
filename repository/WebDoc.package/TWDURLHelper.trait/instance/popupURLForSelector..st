t-url
popupURLForSelector: aSymbol
	^ self popupURL, '/selector/list/', aSymbol webdocEncoded, self urlHTMLSuffix