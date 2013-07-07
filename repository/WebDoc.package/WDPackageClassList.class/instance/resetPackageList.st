initialization
resetPackageList
	
	packages := self environment packages.
	packages sort: [ :a :b | a packageName <= b packageName ].