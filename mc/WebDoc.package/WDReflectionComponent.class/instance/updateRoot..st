updating
updateRoot: anHtmlRoot
	anHtmlRoot stylesheet url: (self relativeURL: WDFileLibrary / #commonCss).
	anHtmlRoot stylesheet url: (self relativeURL: WDFileLibrary / #stcodeCss).
	anHtmlRoot stylesheet url: (self relativeURL: WDFileLibrary / #styleCss).
	anHtmlRoot stylesheet url: (self relativeURL: WDFileLibrary / #vtipCss).
	anHtmlRoot script with: self baseScript.
	anHtmlRoot script url: (self relativeURL: WDFileLibrary / #jQueryJs).
	anHtmlRoot script url: (self relativeURL: WDFileLibrary / #jQueryUiJs).
	anHtmlRoot script url: (self relativeURL: WDFileLibrary / #appJs).
	
	super updateRoot: anHtmlRoot.
	self title ifNotNilDo: [ :titleString | anHtmlRoot title: titleString ]