helper
prepareMethodList
	implementors := SystemNavigation default allImplementorsOf: self selector.
	implementors sort: [ :a :b| a methodClass name <= b methodClass name].