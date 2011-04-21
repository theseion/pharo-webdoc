rendering
renderHeaderOn: html
	html div
		class: 'header';
		with: [
			html div
				class: 'title';
				with: self title.
			self renderSearchFieldOn: html].