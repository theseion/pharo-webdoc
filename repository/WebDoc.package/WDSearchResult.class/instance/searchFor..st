as yet unclassified
searchFor: aSearchString
	searchTerm := aSearchString.
	searchGroups do: [ :each|
		each searchFor: aSearchString].