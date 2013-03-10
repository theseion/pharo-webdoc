routes
file: fileName
	<get>
	<path: 'files/{fileName}'>
	
	self requestContext respond: [ :response |
		response 
			contentType: 'text/plain';
			nextPutAll: (self fileLibrary contentsForName: fileName) ]