private
relativeURL: aWAUrlOrString
	"Return a WAUrl relative to the currently requested url"
	| requestContext |
	requestContext := self requestContext.
	^ WDRelativeUrl new path: (requestContext request url relativeTo: aWAUrlOrString seasideUrl) allButFirst