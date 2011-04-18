rendering
renderSelectorListOn: html
	| selectors |
	selectors := SystemNavigation default allImplementedMessages select: [ :sel| sel beginsWith: category ].
	selectors := selectors asArray sort.
	selectors withIndexDo: [ :sel :index|
		self renderSelector: sel at: index on: html ].	