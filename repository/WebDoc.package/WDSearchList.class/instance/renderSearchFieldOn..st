as yet unclassified
renderSearchFieldOn: html
	html div 
		id: 'searchField';
		with: [
			html text: 'search:'.
			html searchInput].
		