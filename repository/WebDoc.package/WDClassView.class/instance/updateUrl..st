url
updateUrl: aUrl

	super updateUrl: aUrl.
	selectedMethod
		ifNotNil: [:method | aUrl addPath: 'method/', method asString]