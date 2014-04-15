updating
updateRoot: anHtmlRoot
	anHtmlRoot stylesheet url: (self relativeURL: WDFileLibrary / #commonCss).
	anHtmlRoot stylesheet url: (self relativeURL: WDFileLibrary / #stcodeCss).
	anHtmlRoot stylesheet url: (self relativeURL: WDFileLibrary / #fulllistCss).
	anHtmlRoot script url: (self relativeURL: WDFileLibrary / #jQueryJs).
	anHtmlRoot script url: (self relativeURL: WDFileLibrary / #jQueryUiJs).
	anHtmlRoot script url: (self relativeURL: WDFileLibrary / #fulllistJs)