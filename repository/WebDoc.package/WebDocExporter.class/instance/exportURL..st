private
exportURL: aURL
	| file requestContext |
	
	file := self destination resolve: aURL asString.
	
	(FileStream isAFileNamed: file fullName) ifTrue: [ ^ self ].
	
	"now this gets soooo slow that we have to do all these ugly tricks"
	self ensureDirectory: file parent asAbsolute.
		
	requestContext := self requestContextForURL: aURL.
	[ rootComponent handle: requestContext ]
		on: WAResponseNotification
		do: [ :n | "got a response" ].
	file writeStreamDo: [ :stream| 
		stream nextPutAll: requestContext response contents ]