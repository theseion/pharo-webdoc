tests
testWithAPackageContainingTrait
	yuml addPackageNamed: 'CollectionsTests'.
	self assert: (yuml inheritanceDiagram includesSubstring: 'TAddTest') not.