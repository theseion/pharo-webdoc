rendering
renderContentOn: html 
	html div
		id: self id;
		with: [
			self renderHeaderOn: html.
			html unorderedList
				id: 'full_list';
				with: [ self renderListOn: html]]