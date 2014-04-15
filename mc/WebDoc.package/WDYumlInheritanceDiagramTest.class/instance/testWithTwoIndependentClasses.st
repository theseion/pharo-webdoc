tests
testWithTwoIndependentClasses
	yuml addClass: ByteString; addClass:Symbol.
	self assert:yuml inheritanceDiagram equals:  '[String]^-[ByteString],[String]^-[Symbol]'.