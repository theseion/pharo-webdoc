tests
testWithOneClass
	yuml addClass: ByteString.
	self assert:yuml inheritanceDiagram equals: '[String]^-[ByteString]'.