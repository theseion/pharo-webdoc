helper
initializeItems
	items := SystemNavigation default allImplementorsOf: self selector.
	items sort: [ :a :b| a methodClass name <= b methodClass name].
	
	^ items