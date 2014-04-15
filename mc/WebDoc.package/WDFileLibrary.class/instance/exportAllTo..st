exporting
exportAllTo: aFileReference
	| files |
	files := (aFileReference / 'files') ensureCreateDirectory.
	
	self fileSelectors do: [ :fileProviderMethodSelector | | file |
		file := files / (self asFilename: fileProviderMethodSelector).
		file exists ifFalse: [
				file writeStreamDo: [ :st | st nextPutAll: (self perform: fileProviderMethodSelector ) ]]].