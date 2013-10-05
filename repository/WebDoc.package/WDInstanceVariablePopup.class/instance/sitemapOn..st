sitemap
sitemapOn: stream
	
	self environment classesAndTraitsDo: [ :class |
		stream nextPutAll: (self poupURLForInstanceVariables: class); crlf.
		stream nextPutAll: (self poupURLForInstanceVariables: class class); crlf.
			
		class instVarNames do: [ :variableName|
			stream nextPutAll: (self poupURLForInstanceVariable: variableName inClass: class); crlf].
		class class instVarNames do: [ :variableName|
			stream nextPutAll: (self poupURLForInstanceVariable: variableName inClass: class class); crlf ]]