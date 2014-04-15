rendering
renderListOn: html 
	html anchor
		target: '_searchingToolbar'.
	classes doWithIndex: [ :class :index |
		self renderClass: class at: index on: html ]