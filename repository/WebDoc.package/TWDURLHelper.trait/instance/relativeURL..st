private
relativeURL: aWAUrlOrString
	"Return a WAUrl relative to the currently requested url"
	| requestContext |
	requestContext := [ self requestContext ] on: WARequestContextNotFound do: [ ^ aWAUrlOrString ].
	^ aWAUrlOrString seasideUrl asRelativeURLTo: requestContext request url