url
updateUrl: aUrl

	super updateUrl: aUrl.
	selectedMethod
		ifNotNil: [:method | aUrl addToPath: 'method/', method asString]