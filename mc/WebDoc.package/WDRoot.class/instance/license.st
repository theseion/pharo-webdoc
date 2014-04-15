routes
license
	<get>
	<path: 'license.txt'>
   <produces: 'text/plain'>

	self requestContext respond: [ :response |
		response 
			contentType: 'text/plain';
			nextPutAll: Smalltalk licenseString ]