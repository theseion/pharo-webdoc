tests
testWithAPackageName
	yuml addPackageNamed: 'WebDoc'.	
	self assert: (yuml inheritanceDiagram includesSubstring: self class name).