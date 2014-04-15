routes
version
	<get>
	<path: 'version.txt'>
   <produces: 'text/plain'>

	self requestContext respond: [ :response |
		response 
			contentType: 'text/plain';
			nextPutAll: SystemVersion current highestUpdate asString ]