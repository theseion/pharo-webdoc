exporting
exportURL: aURL to: aFileReference 
	| file |
	file := aFileReference resolve: (aURL seasideUrl asRelativeURLTo: self rootURL) asString.
	file parent ensureDirectory.
	file exists ifTrue: [ ^ self ].
	ZnClient new
		url: 'http://localhost:8088/', aURL;
		downloadTo: file fullName.