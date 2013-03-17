exporting
exportURL: aURL to: aFileReference 
	| file current |
	
	file := aFileReference resolve: (aURL seasideUrl asRelativeURLTo: self rootURL) asString.
	
	(FileStream isAFileNamed: file fullName) ifTrue: [ ^ self ].
	
	"now this gets soooo slow that we have to do all these ugly tricks"
	self ensureDirectory: file parent asAbsolute.
		
	[	ZnClient new
		url: 'http://localhost:8088/', aURL;
		numberOfRetries: 10;
		downloadTo: file fullName
	] on: FileExistsException do: [:e|
		"probably an uppercase vs. lowercase in the filename.
		OSX doesn't distinguish those files properly..."
		 ^ self ]