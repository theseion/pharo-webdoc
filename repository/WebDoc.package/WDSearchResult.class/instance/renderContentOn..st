as yet unclassified
renderContentOn: html
	html div
		id: 'searchResults';
		with: [ 
			self renderSearchGroupsOn: html ].