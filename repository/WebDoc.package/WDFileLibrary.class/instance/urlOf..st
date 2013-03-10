accessing
urlOf: aSymbol
	"overwrite to use the component root url to server the file"
	self flag: 'Dont hardcode this here'.
	
	^ (self rootURL, '/files/') seasideUrl
		addToPath: (self asFilename: aSymbol);
		yourself