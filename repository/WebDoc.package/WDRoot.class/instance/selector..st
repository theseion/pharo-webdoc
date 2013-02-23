routes
selector: aSelector
	<get>
	<path: '/selector/list/{aSelector}'>
	activeView := self selectorView.
	activeView category: nil.
	activeView selector: aSelector asSymbol