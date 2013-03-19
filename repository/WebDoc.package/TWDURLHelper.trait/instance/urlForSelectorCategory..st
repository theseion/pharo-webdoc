t-url
urlForSelectorCategory: aCategoryName
	^ self selectorBaseURL, '/category/', aCategoryName webdocEncoded, self urlHTMLSuffix