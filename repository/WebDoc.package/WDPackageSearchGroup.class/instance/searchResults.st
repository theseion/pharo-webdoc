accessing
searchResults
	|result beginsWith others sortBlock name |
	sortBlock := [ :a :b| a name <= b name ].
	result := OrderedCollection new.
	beginsWith := SortedCollection sortBlock: sortBlock.
	others := SortedCollection sortBlock: sortBlock.
	
	PackageOrganizer default packages do: [ :package|
		name := package name.
		name = searchTerm
			ifTrue: [ result add: package]
			ifFalse: [ (name beginsWith: searchTerm)
				ifTrue: [ beginsWith add: package]
				ifFalse: [ (name findString: searchTerm) > 0
					ifTrue: [others add: package]
					ifFalse: [ (searchRegexp matches: name)
						ifTrue: [ others add: package]]]]].
	result addAll: beginsWith.
	result addAll: others.
	^ result