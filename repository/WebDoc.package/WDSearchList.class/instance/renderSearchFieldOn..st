rendering
renderSearchFieldOn: html
	html div 
		id: 'search';
		with: [
			html text: 'Search:'.
			html searchInput].
		