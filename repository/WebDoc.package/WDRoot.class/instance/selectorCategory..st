routes
selectorCategory: aSymbol
	<get>
	<path: 'selector/category/{aSymbol}'>
	activeView := self selectorView.
	activeView category: aSymbol.
	activeView selector: nil