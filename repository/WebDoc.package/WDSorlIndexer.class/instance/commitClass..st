as yet unclassified
commitClass: aClass
	|data addDict |
	data := OrderedCollection new.
	data add: (self classProperties: aClass).
	
	aClass methodsDo: [ :method|
		data add: (self methodProperties: method)].
	
	aClass class methodsDo: [ :method|
		data add: (self methodProperties: method)].
	
	data withIndexDo: [ :each :index|
		addDict := Dictionary new.
		addDict at: #doc put: (data at: index).
		data at: index put: (Dictionary newFromPairs: { #add. addDict})].
	
	
	self commit: (Json render: data).