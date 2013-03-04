sitemap
sitemapOn: stream
	stream nextPutAll: self urlForSelector; crlf.
	self categories do: [ :symbolCategoryName |
		stream nextPutAll: (self urlForSelectorCategory: symbolCategoryName); crlf.
		(self selectorsForCategory: symbolCategoryName) do: [ :symbol |
			stream 
				nextPutAll: (self urlForSelector: symbol); crlf;
				nextPutAll: (self popupURLForSelector: symbol); crlf  ]]