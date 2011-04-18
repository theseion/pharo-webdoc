routes
selectorCategory: aSymbol
	<GET>
	<Path: '/selector/category/{aSymbol}'>
	activeView := self selectorView.
	activeView category: aSymbol.
	activeView selector: nil.