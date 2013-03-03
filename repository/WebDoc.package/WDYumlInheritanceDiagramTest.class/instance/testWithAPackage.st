tests
testWithAPackage
	| aPackage |
	aPackage :=  PackageOrganizer default packageOfClass: self class.
	yuml addPackage: aPackage.
	self assert: (aPackage classes size) equals: (',' split: yuml inheritanceDiagram) size
	