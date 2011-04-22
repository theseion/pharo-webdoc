as yet unclassified
renderSearchResultsOn: html
	| index |
	index := 0.
	self searchResults do: [ :each|
		html listItem
			class: (index even ifTrue: [ 'r1' ] ifFalse: [ 'r2']);
			with: [	self renderSearchResult: each on: html].
		index := index + 1].