rendering
handleRequest: aRequest
	(aRequest url endsWith: '/sitemap.xml') ifTrue: [
		 ^WAResponse new
              beXML;
              contents: (self sitemap) asString readStream;
              yourself ].

	^ super handleRequest: aRequest.