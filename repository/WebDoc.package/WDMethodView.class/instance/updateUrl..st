as yet unclassified
updateUrl: aUrl

	super updateUrl: aUrl.
"	self method
		ifNotNil: [:m | aUrl path m asString]"