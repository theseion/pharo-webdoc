sitemap
sitemapOn: stream
	
	stream nextPutAll: self urlForClass; crlf.
	
	self environment classesAndTraitsDo: [ :class| 
		stream 
			nextPutAll: (self urlForClass: class); crlf;
			nextPutAll: (self popupURLForClass: class); crlf ]