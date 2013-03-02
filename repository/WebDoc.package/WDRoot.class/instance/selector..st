routes
selector: aSelector
	<get>
	<path: 'selector/list/{aSelector}.html'>
	activeView := self selectorView.
	activeView category: nil.
	activeView selector: aSelector asSymbol