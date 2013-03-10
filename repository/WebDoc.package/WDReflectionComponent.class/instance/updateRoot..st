updating
updateRoot: anHtmlRoot
	rootURL := anHtmlRoot context actionBaseUrl withoutQuery asString.
	anHtmlRoot stylesheet url: (self relativeURL: WDFileLibrary / #commonCss).
	anHtmlRoot stylesheet url: (self relativeURL: WDFileLibrary / #stcodeCss).
	anHtmlRoot stylesheet url: (self relativeURL: WDFileLibrary / #styleCss).
	anHtmlRoot stylesheet url: (self relativeURL: WDFileLibrary / #vtipCss).
	anHtmlRoot script url: (self relativeURL: WDFileLibrary / #jQueryJs).
	anHtmlRoot script url: (self relativeURL: WDFileLibrary / #jQueryUiJs).
	anHtmlRoot script url: (self relativeURL: WDFileLibrary / #appJs).
	super updateRoot: anHtmlRoot.
	self title ifNotNilDo: [ :titleString | anHtmlRoot title: titleString ]