rendering
renderSelectorListOn: html
	| selectors |
	selectors := self selectorsForCategory: category.
	selectors := selectors asArray sort.
	selectors withIndexDo: [ :sel :index|
		self renderSelector: sel at: index on: html ].	