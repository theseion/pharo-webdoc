as yet unclassified
method: aMethod
	method := aMethod.
	parseTree := method parseTree.
	classVarNames := method methodClass allClassVarNames asSet.
	tempNames := parseTree body temporaryNames asSet.
	argumentNames := parseTree argumentNames asSet.
	instVarNames := method methodClass allInstVarNames asSet.
	inLiteralArray := false.