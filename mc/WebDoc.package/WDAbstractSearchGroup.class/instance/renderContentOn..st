rendering
renderContentOn: html
	(searchResults isNil or: [searchResults isEmpty]) 
		ifTrue: [ ^ self ].
	html div
		class: 'searchGroup';
		with: [
			html heading
				with: self name.
			html unorderedList
				with: [
					self renderSearchResultsOn: html]].