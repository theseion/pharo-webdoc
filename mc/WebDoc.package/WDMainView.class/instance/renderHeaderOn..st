rendering
renderHeaderOn: html 
	html div id: 'menu';
		with: [ html span class: 'title'; with: 'here be breadcrumbs' ].
		
	html div id: 'search';
		with: [
			html anchor url: '#'; with: 'Class List'.
			html anchor url: '#'; with: 'Selector List' ].
		
	html div