routes
selector: aSelector
	<GET>
	<Path: '/selector/list/{aSelector}'>
	activeView := self selectorView.
	activeView category: nil.
	activeView selector: aSelector asSymbol