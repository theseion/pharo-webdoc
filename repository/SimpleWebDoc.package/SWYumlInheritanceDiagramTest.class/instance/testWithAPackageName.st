as yet unclassified
testWithAPackageName
	yuml addPackageNamed: 'SimpleWebDoc'.	
	self assert: (yuml inheritanceDiagram includesSubString: self class name).