rendering
renderHeaderOn: html
	html div
		id: 'header';
		with: [ self renderSearchOn: html ]