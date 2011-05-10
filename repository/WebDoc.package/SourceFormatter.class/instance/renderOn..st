rendering
renderOn: aRenderingCanvas
	html := aRenderingCanvas.
	inLiteralArray := false.
	method isNil
		ifTrue: [
			classVarNames := #().
			instVarNames := #().
		] ifFalse: [
			classVarNames := method methodClass theNonMetaClass allClassVarNames asSet.
			instVarNames := method methodClass allInstVarNames asSet].
	
	self prepareTemporaries.
	
	parseTree acceptVisitor: self.