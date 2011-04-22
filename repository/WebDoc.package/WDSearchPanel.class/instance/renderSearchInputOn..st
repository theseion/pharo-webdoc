as yet unclassified
renderSearchInputOn: html
	html searchInput
		accessKey: 's';
		placeholder: 'search';
		name: 'q';
		id: 'search_box';
		size: '30';
		class: 'ac_input';
		value: searchTerm;
		onKeyUp: (html jQuery ajax
			callback: [ :value | 
				value size >= 2
					ifTrue: [ self searchFor: value]
					ifFalse: [ self searchFor: '']]
			value: (html jQuery id: 'search_box') value);
      	onKeyUp: ((html jQuery: #searchResults) load
            html: [ :h | searchResult renderSearchGroupsOn: h ]);
               callback: [ :value | self searchFor: value ]