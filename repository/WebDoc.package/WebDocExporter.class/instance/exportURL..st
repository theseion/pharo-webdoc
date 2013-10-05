private
exportURL: aURL
	| file requestContext |
	
	file := self destination resolve: (aURL seasideUrl asRelativeURLTo: self rootURL) asString.
	
	(FileStream isAFileNamed: file fullName) ifTrue: [ ^ self ].
	
	"now this gets soooo slow that we have to do all these ugly tricks"
	self ensureDirectory: file parent asAbsolute.
		
	1halt.
	requestContext := self requestContextFor: aURL.