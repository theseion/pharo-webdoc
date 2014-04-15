sitemap
sitemapOn: aStream
	self fileSelectors do: [ :fileProviderMethodSelector |
		aStream nextPutAll: './files/'; nextPutAll: (self asFilename: fileProviderMethodSelector); crlf ]