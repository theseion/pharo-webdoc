as yet unclassified
renderListOn: html
	| selectors |
	selectors := SystemNavigation default allSentMessages asArray sort.
	selectors doWithIndex: [ :selector :index|
		self renderSelector: selector at: index on: html]