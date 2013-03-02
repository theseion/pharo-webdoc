rendering
renderOn: aRenderingCanvas
	html := aRenderingCanvas.
	
	[ parseTree := PPMarkdownParser parse: self comment. ]
		on: Error do: [ :e| 
			(e -> self comment) inspect.
			^ html text: comment].
		
	parseTree isPetitFailure
		ifTrue: [ ^ html text: comment].
	parseTree isCollection
		 ifTrue: [ 
			parseTree do: [:each| 
			self visitNode: each ]]
		ifFalse: [
			parseTree first do: [ :each|
				self visitNode: each]].