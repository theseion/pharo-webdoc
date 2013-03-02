accessing
searchResults
	|result beginsWith others sortBlock name |
	sortBlock := [ :a :b| a name <= b name ].
	result := OrderedCollection new.
	beginsWith := SortedCollection sortBlock: sortBlock.
	others := SortedCollection sortBlock: sortBlock.
	
	SystemNavigation default allClassesDo: [ :class|
		name := class name.
		name = searchTerm
			ifTrue: [ result add: class]
			ifFalse: [ (name beginsWith: searchTerm)
				ifTrue: [ beginsWith add: class]
				ifFalse: [ (name findString: searchTerm) > 0
					ifTrue: [others add: class]
					ifFalse: [ (searchRegexp matches: name)
						ifTrue: [ others add: class]]]]].
	result addAll: beginsWith.
	result addAll: others.
	^ result