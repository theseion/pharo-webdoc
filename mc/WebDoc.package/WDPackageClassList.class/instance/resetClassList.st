accessing
resetClassList
	selectedPackage ifNil: [ 
		classes := #().
		^ self ]. 
	
	classes := ((RBPackageEnvironment packageName: selectedPackage name) classes
		reject: [ :each | each isMeta ])
		sorted: [ :a :b | a name <= b name ].