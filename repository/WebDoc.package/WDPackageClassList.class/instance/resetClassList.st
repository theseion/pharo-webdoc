accessing
resetClassList
	selectedPackage ifNil: [ 
		classes := #().
		^ self ]. 
	classes := (RBPackageEnvironment packageName: selectedPackage name) classes
		sorted: [ :a :b | a name <= b name ].