exporting
exportURL: aURL to: aFileReference 
	| file |
	file := aFileReference resolve: (aURL seasideUrl asRelativeURLTo: self rootURL) asString.
	"now this gets soooo slow that we have to do all these ugly tricks"
	(FileDirectory forFileName: file parent fullName) exists
		ifFalse: [ file parent createDirectory ].
	(FileStream isAFileNamed: file fullName) ifTrue: [ ^ self ].
	[	ZnClient new
		url: 'http://localhost:8088/', aURL;
		numberOfRetries: 1;
		downloadTo: file fullName
	] on: FileExistsException do: [:e|
		"probably an uppercase vs. lowercase in the filename.
		OSX doesn't distinguish those files properly..."
		 ^ self ]