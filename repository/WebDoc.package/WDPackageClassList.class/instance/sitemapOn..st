sitemap
sitemapOn: stream
		
	packages do: [ :package|
		stream nextPutAll: (self urlForPackage: package packageName); crlf ]