helper
initializeItems
	items := self allImplementorsOf: self selector.
	items sort: [ :a :b| a methodClass name <= b methodClass name].
	
	^ items