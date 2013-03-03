as yet unclassified
testWithTwoRelatedClasses
	yuml addClass: Symbol; addClass: String.
	self assert: yuml inheritanceDiagram equals:  '[String]^-[Symbol],[ArrayedCollection]^-[String]' 