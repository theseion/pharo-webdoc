rendering
renderSelector: aSymbol at: index on: html
	(self listItemAt: index on: html)
		with: [ self renderSelector: aSymbol on: html ]