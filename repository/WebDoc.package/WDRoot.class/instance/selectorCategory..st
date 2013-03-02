routes
selectorCategory: aSymbol
	<get>
	<path: 'selector/category/{aSymbol}.html'>
	activeView := self selectorView.
	activeView category: aSymbol.
	activeView selector: nil