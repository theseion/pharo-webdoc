accessing
urlOf: aSymbol
	
	^ (self rootURL, '/files/') seasideUrl
		addToPath: (self asFilename: aSymbol);
		yourself