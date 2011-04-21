rendering
renderOn: aRenderingCanvas
	html := aRenderingCanvas.
	inLiteralArray := false.
	classVarNames := method methodClass theNonMetaClass allClassVarNames asSet.
	instVarNames := method methodClass allInstVarNames asSet.
	
	self prepareTemporaries.
	
	parseTree acceptVisitor: self.