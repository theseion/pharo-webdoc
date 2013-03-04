updating
updateRoot: anHtmlRoot
	
	rootURL := anHtmlRoot context actionBaseUrl withoutQuery asString.
	anHtmlRoot stylesheet 
		url: WDFileLibrary / #commonCss.
	anHtmlRoot stylesheet 
		url: WDFileLibrary / #stcodeCss.
	anHtmlRoot stylesheet 
		url: WDFileLibrary / #styleCss.
	anHtmlRoot stylesheet 
		url: WDFileLibrary / #vtipCss.
		
	anHtmlRoot script 
		url: JQDevelopmentLibrary / #jQueryJs.
	anHtmlRoot script 
		url: JQUiDevelopmentLibrary / #jQueryUiJs.
	anHtmlRoot script 
		url: WDFileLibrary / #appJs.
		
	super updateRoot: anHtmlRoot.
	
	self title ifNotNilDo: [ :titleString | anHtmlRoot title: titleString ]