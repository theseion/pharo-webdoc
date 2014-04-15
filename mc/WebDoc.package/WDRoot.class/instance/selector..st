routes
selector: aSelector
	<get>
	<path: 'selector/list/{aSelector}.html'>
	<produces: 'text/html'>
	
	activeView := self selectorView.
	activeView category: nil.
	activeView selector: aSelector urldecoded asSymbol.
	^ self render: activeView.