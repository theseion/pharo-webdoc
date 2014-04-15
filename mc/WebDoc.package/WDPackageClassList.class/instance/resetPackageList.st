initialization
resetPackageList
	
	packages := self environment packages asArray.
	packages sort: [ :a :b | a packageName <= b packageName ].