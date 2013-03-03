public
searchFor: aSearchString
	searchTerm := aSearchString.
	[ searchRegexp := searchTerm asRegex ]
		on: RegexSyntaxError
		do: [ searchRegexp := '' asRegex].
	searchResults := self searchResults.