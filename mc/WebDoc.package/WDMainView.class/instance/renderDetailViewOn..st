rendering
renderDetailViewOn: html
		
	html div
		id: 'main';
		with: [
			html iframe
				name: 'classView';
				id: 'classView';
				url: self initialDetailsViewURL;
				width: '100%';
				height: '100%'.
		]