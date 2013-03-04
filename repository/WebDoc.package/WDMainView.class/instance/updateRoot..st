updating
updateRoot: anHtmlRoot
	
	anHtmlRoot stylesheet 
		url: WDFileLibrary / #mainCss.
		
	anHtmlRoot link
		relationship: 'license';
		url: self urlForLicense.
		
	anHtmlRoot script 
		url: JQDevelopmentLibrary / #jQueryJs.
	anHtmlRoot script 
		url: JQUiDevelopmentLibrary / #jQueryUiJs.
	anHtmlRoot script 
		url: WDFileLibrary / #bbqJs.
	anHtmlRoot script 
		url: WDFileLibrary / #mainJs.
		
	self title ifNotNilDo: [ :titleString | anHtmlRoot title: titleString ]