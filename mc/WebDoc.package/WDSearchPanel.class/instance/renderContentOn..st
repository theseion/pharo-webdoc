as yet unclassified
renderContentOn: html
	html form
		class: 'hidden';
		id: 'search';
		method: 'get';
		with: [
			html div
				class: 'searchInput';
				with: [
					html text: 'Search: '.
					self renderSearchInputOn: html].
			html render: searchResult]