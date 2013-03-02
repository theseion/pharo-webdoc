accessing
searchResults
	|result beginsWith others sortBlock |
	sortBlock := [ :a :b| a name <= b name ].
	result := OrderedCollection new.
	beginsWith := SortedCollection sortBlock: sortBlock.
	others := SortedCollection sortBlock: sortBlock.
	
	SystemNavigation default allBehaviorsDo: [:class | class
		selectorsAndMethodsDo: [:name :method|
			name = searchTerm
				ifTrue: [ result add: method]
				ifFalse: [ (name beginsWith: searchTerm)
					ifTrue: [ beginsWith add: method]
					ifFalse: [ (name findString: searchTerm) > 0
						ifTrue: [others add: method]
						ifFalse: [ (searchRegexp matches: name)
							ifTrue: [ others add: method]]]]]].
	result addAll: beginsWith.
	result addAll: others.
	^ result