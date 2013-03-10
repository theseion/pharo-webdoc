updating
updateRoot: anHtmlRoot
	anHtmlRoot stylesheet url: (self relativeURL: WDFileLibrary / #mainCss).
	anHtmlRoot link
		relationship: 'license';
		url: 'license.txt'.
	anHtmlRoot script url: (self relativeURL: WDFileLibrary / #jQueryJs).
	anHtmlRoot script url: (self relativeURL: WDFileLibrary / #jQueryUiJs).
	anHtmlRoot script url: (self relativeURL: WDFileLibrary / #bbqJs).
	anHtmlRoot script url: (self relativeURL: WDFileLibrary / #mainJs).
	self title ifNotNilDo: [ :titleString | anHtmlRoot title: titleString ]