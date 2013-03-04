rendering
renderOn: aRenderingCanvas
	html := aRenderingCanvas.
	self flag: 'clean and fix pp markdown parser'.
	[[ ast := PPMarkdownParser parse: self comment. ]
		on: Error do: [ :e| 
			(e -> self comment) inspect.
			^ html text: comment]
	] 	valueWithin: 10 seconds 
		onTimeout: [
			(#timeout -> self comment) inspect.
			^ html text: comment].
		
	ast isPetitFailure
		ifTrue: [ ^ html text: comment].
	[
	ast isCollection
		 ifTrue: [ 
			ast do: [:each| 
			self visitNode: each ]]
		ifFalse: [
			ast first do: [ :each|
				self visitNode: each]]
	] on: Error do: [ :e| 
			(e -> self comment) inspect.
			^ html text: comment]