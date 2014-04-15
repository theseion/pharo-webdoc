routes
selectorCategory: aSymbol
	<get>
	<path: 'selector/category/{aSymbol}.html'>
   <produces: 'text/html'>
	
	activeView := self selectorView.
	activeView category: aSymbol urldecoded.
	activeView selector: nil.
	^ self render: activeView.