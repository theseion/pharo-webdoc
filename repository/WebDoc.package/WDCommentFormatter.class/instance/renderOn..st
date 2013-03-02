rendering
renderOn: aRenderingCanvas
	html := aRenderingCanvas.
	parseTree := PPMarkdownParser parse: self comment.
	parseTree isPetitFailure
		ifTrue: [ ^ html text: comment].
	parseTree isCollection
		 ifTrue: [ 
			parseTree do: [:each| 
			self visitNode: each ]]
		ifFalse: [
			parseTree first do: [ :each|
				self visitNode: each]].