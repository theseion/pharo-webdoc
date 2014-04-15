routes
sitemap
	<get>
	<path: 'sitemap.txt'>
   <produces: 'text/plain'>

	self requestContext respond: [ :response | | stream |
		response 
			contentType: 'text/plain'.
		stream := response stream.
		
		stream nextPutAll: './index.html'; crlf.
		stream nextPutAll: './license.txt'; crlf.
		stream nextPutAll: './welcome.html'; crlf.
		
		self fileLibrary sitemapOn: stream.
		
		self packageTree sitemapOn: stream.
		self packageClassView sitemapOn: stream.
		self classView sitemapOn: stream.
		self instanceVariablePopupView sitemapOn: stream.
		self methodPopup sitemapOn: stream.
		
		self selectorView sitemapOn: stream. ]