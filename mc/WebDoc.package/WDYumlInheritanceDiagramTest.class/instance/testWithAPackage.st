tests
testWithAPackage
	| aPackage |
	aPackage :=  RPackageOrganizer default packageOf: self class.
	yuml addPackage: aPackage.
	self 
		assert: ((aPackage classes reject: #isTrait) size) 
		equals: (',' split: yuml inheritanceDiagram) size
	