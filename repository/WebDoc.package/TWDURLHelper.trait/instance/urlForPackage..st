t-url
urlForPackage: packageName
	^ self rootURL, '/package/', packageName urlencoded, self urlHTMLSuffix