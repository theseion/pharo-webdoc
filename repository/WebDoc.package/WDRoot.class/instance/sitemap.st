routes
sitemap
	<get>
	<path: 'sitemap.txt'>
   <produces: 'text/plain'>

	self requestContext respond: [ :response | | stream |
		response 
			contentType: 'text/plain'.
		stream := response stream.
		
		self packageTree sitemapOn: stream.
		self packageClassView sitemapOn: stream.
		self classView sitemapOn: stream.
		self selectorView sitemapOn: stream ]