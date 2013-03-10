updating
updateRoot: anHtmlRoot
	
	anHtmlRoot stylesheet 
		url: (self convertToRelativeURL: WDFileLibrary / #mainCss in: anHtmlRoot).
		
	anHtmlRoot link
		relationship: 'license';
		url: self urlForLicense.
		
	anHtmlRoot script 
		url: (self convertToRelativeURL: WDFileLibrary / #jQueryJs in: anHtmlRoot).
	anHtmlRoot script 
		url: (self convertToRelativeURL: WDFileLibrary / #jQueryUiJs in: anHtmlRoot).
	anHtmlRoot script 
		url: (self convertToRelativeURL: WDFileLibrary / #bbqJs in: anHtmlRoot).
	anHtmlRoot script 
		url: (self convertToRelativeURL: WDFileLibrary / #mainJs in: anHtmlRoot).
		
	self title ifNotNilDo: [ :titleString | anHtmlRoot title: titleString ]