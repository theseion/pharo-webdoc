as yet unclassified
renderContentOn: html
	html div
		id: 'sidebar';
		with: [
			html iframe	
				name: 'list';
				id: 'list';
				url: '/doc/package'.
			html div
				id: 'dragbar'].
				
	html div
		id: 'main';
		with: [
			html iframe
				name: 'main';
				width: '100%';
				height: '100%'.
		]