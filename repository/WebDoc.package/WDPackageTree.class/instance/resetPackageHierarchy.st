initialization
resetPackageHierarchy
	
	hierarchy := Stack new.
	packages := self environment packages.
	packages sort: [ :a :b| a packageName <= b packageName ].