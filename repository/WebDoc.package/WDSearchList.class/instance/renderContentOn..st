rendering
renderContentOn: html 

	html anchor
		name: 'test';
		target: '_blank';
		with:[
			html div
				id: self id;
				with: [
					self renderSearchFieldOn: html.
					html unorderedList
						id: 'full_list';
						with: [ self renderListOn: html]]]