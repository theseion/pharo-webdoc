sitemap
sitemapOn: stream
	
	SystemNavigation default allBehaviorsDo: [ :class |
		class instVarNames do: [ :variableName|
			stream nextPutAll: (self urlForInstanceVariable: variableName inClass: class); crlf].
		class class instVarNames do: [ :variableName|
			stream nextPutAll: (self urlForInstanceVariable: variableName inClass: class class); crlf ]]