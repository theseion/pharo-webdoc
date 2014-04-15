as yet unclassified
testWithAPackageContainingTrait
	yuml addPackageNamed: 'CollectionsTests'.
	self assert: (yuml inheritanceDiagram includesSubString: 'TAddTest') not.