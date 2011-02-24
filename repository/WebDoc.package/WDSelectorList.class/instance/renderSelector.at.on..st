as yet unclassified
renderSelector: selector at: index on: html
	(self listItemAt: index on: html)
		with: [self renderSelector: selector on: html]