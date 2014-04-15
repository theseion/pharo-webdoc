rendering
updateRoot: anHtmlRoot
   super updateRoot: anHtmlRoot.
	anHtmlRoot title: 'Pharo source documentation'.
   anHtmlRoot stylesheet url: (SWFileLibrary urlOf: #swstyleCss).
   anHtmlRoot stylesheet url: (SWFileLibrary urlOf: #swprintCss); media: 'print'.