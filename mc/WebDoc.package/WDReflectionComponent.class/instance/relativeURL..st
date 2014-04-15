private
relativeURL: aWAUrlOrString
	"Return a WAUrl relative to the currently requested url"
	| requestURL |
	requestURL := [ self requestContext request url ] 
						on: WARequestContextNotFound do: [ ^ aWAUrlOrString ].
	requestURL isFile
		ifTrue: [ requestURL := requestURL parent ].
	^ aWAUrlOrString seasideUrl asRelativeURLTo: requestURL