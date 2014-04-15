caching
htmlCache
	^ HtmlCache ifNil: [ HtmlCache := Dictionary new ]