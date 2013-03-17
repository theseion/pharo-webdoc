accessing
baseScript
	|requestURL|
	^ String streamContents: [ :s| 	
			requestURL := self requestContext request url.
			s crlf; 
				nextPutAll: 'var __DOC_URL__ ="'; 
				print: (self rootURL seasideUrl asRelativeURLTo: requestURL); 
				nextPutAll: '";'; crlf.
		]