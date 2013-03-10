sitemap
sitemapOn: stream
	
	SystemNavigation default allBehaviorsDo: [ :class |
		class methodsDo: [ :aMethod |
			stream nextPutAll: (self popupURLForMethod: aMethod); crlf ].
		class class methodsDo: [ :aMethod |
			stream nextPutAll: (self popupURLForMethod: aMethod); crlf ]]