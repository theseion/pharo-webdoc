updating
updateRoot: anHtmlRoot
	
	rootURL := anHtmlRoot context actionBaseUrl withoutQuery asString.
	anHtmlRoot stylesheet 
		url: (self convertToRelativeURL: WDFileLibrary / #commonCss in: anHtmlRoot).
	anHtmlRoot stylesheet 
		url: (self convertToRelativeURL: WDFileLibrary / #stcodeCss in: anHtmlRoot).
	anHtmlRoot stylesheet 
		url: (self convertToRelativeURL: WDFileLibrary / #styleCss in: anHtmlRoot).
	anHtmlRoot stylesheet 
		url: (self convertToRelativeURL: WDFileLibrary / #vtipCss in: anHtmlRoot).
		
	anHtmlRoot script 
		url: (self convertToRelativeURL: WDFileLibrary / #jQueryJs in: anHtmlRoot).
	anHtmlRoot script 
		url: (self convertToRelativeURL: WDFileLibrary / #jQueryUiJs in: anHtmlRoot).
	anHtmlRoot script 
		url: (self convertToRelativeURL: WDFileLibrary / #appJs in: anHtmlRoot).
		
	super updateRoot: anHtmlRoot.
	
	self title ifNotNilDo: [ :titleString | anHtmlRoot title: titleString ]