routes
file: fileName
	<get>
	<path: 'files/{fileName}'>
	
	self requestContext respond: [ :response |
		response 
			contentType: (ZnMimeType forFilenameExtension: (fileName copyAfterLast: $.)) asString;
			nextPutAll: (self fileLibrary contentsForName: fileName) ]