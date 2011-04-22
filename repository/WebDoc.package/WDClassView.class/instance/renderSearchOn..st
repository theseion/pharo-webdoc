rendering
renderSearchOn: html
	html form
		class: 'search';
		method: 'get';
		with: [
			html text: 'Search: '.
			html searchInput
				accessKey: 's';
				placeholder: 'search';
				name: 'q';
				id: 'search_box';
				size: '30';
				class: 'ac_input'	]
		