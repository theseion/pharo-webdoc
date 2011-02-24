as yet unclassified
renderSearchFieldOn: html
	html div 
		id: 'packageSearchField';
		with: [
			html text: 'search:'.
			html searchInput].
		