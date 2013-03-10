t-url
urlForPackage: packageName
	^ self relativeRootURL, '/package/', packageName urlencoded, self urlHTMLSuffix