as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	
	anHtmlRoot stylesheet 
		url: WDFileLibrary / #commonCss.
	anHtmlRoot stylesheet 
		url: WDFileLibrary / #fulllistCss.
	anHtmlRoot stylesheet 
		url: WDFileLibrary / #stcodeCss.
	anHtmlRoot stylesheet 
		url: WDFileLibrary / #styleCss.
		
	anHtmlRoot script 
		url: WDFileLibrary / #jqueryJs.
	anHtmlRoot script 
		url: WDFileLibrary / #appJs.
	anHtmlRoot script 
		url: WDFileLibrary / #fulllistJs.