rendering
renderSearchGroupsOn: html	
	(searchTerm isNil or: [searchTerm size == 0]) 
		ifTrue: [ ^ self ].
		
	searchGroups do: [ :each|
		html render: each ].