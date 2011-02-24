as yet unclassified
renderClass: class at: index on: html
	(self listItemAt: index on: html)
		with:  [self renderClass: class on: html]
	