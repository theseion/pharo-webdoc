url
updateUrl: aUrl

	super updateUrl: aUrl.
"	self method
		ifNotNil: [:method | aUrl addToPath: 'method/', method asString]"