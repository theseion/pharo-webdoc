as yet unclassified
renderContentOn: html
	html div
		class: 'searchGroup';
		with: [
			html heading
				level: 3;
				with: [ self name ].
			html unorderedList
				with: [
					self renderSearchResultsOn: html]].