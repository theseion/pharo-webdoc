private
relativeURL: aWAUrlOrString
	"Return a WAUrl relative to the currently requested url"
	| requestContext |
	requestContext := [ self requestContext ] on: WARequestContextNotFound do: [ ^ aWAUrlOrString ].
	^ requestContext request url asRelativeURLTo: aWAUrlOrString seasideUrl