as yet unclassified
renderContentOn: html 
	html div
		id: self id;
		with: [
			self renderSearchFieldOn: html.
			html unorderedList
				id: 'full_list';
				with: [ self renderListOn: html]].