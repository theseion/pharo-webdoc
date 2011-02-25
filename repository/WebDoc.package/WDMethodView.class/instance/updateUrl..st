as yet unclassified
updateUrl: aUrl

	super updateUrl: aUrl.
	method
		ifNotNil: [:m | aUrl addPath: m asString]