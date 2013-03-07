t-url
urlForSelectorCategory: aCategoryName
	^ self selectorBaseURL, '/category/', aCategoryName urlencoded, self urlHTMLSuffix