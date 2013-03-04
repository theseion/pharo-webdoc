sitemap
sitemapOn: stream
	
	stream nextPutAll: self urlForClass; crlf.
	
	SystemNavigation default allBehaviorsDo: [ :class| 
		stream 
			nextPutAll: (self urlForClass: class); crlf;
			nextPutAll: (self popupURLForClass: class); crlf.
			
		class methodsDo: [ :method|
			stream nextPutAll: (self popupURLForMethod: method); crlf].
		class class methodsDo: [ :method |
			stream nextPutAll: (self popupURLForMethod: method); crlf ]]