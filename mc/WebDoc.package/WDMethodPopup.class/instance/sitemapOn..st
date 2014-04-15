sitemap
sitemapOn: stream
	
	self environment classesAndTraitsDo: [ :class |
		class methodsDo: [ :aMethod |
			stream nextPutAll: (self popupURLForMethod: aMethod); crlf ].
		class class methodsDo: [ :aMethod |
			stream nextPutAll: (self popupURLForMethod: aMethod); crlf ]]