as yet unclassified
renderSearchResultsOn: html
	| index |
	index := 0.
	searchResults do: [ :each|
		index > resultLimit
			ifTrue: [ 
				html listItem 
					class: (index even ifTrue: [ 'r1' ] ifFalse: [ 'r2']);
					with: '...'.
				^ self ].
		html listItem
			class: (index even ifTrue: [ 'r1' ] ifFalse: [ 'r2']);
			with: [	self renderSearchResult: each on: html].
		index := index + 1].