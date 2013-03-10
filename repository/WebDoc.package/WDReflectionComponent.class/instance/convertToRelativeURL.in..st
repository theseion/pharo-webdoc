private
convertToRelativeURL: aWAUrl in: anHtmlRoot
	"Return a WAUrl relative to the currently requested url"
	self rootURL 
		ifNil: [ ^ aWAUrl ].
	^ WDRelativeUrl new path: (anHtmlRoot context actionUrl relativeTo: aWAUrl)