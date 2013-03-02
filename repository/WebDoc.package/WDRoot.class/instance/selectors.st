routes
selectors
	<get>
	<path: '/selector'>
	activeView := self selectorView.
	activeView category: nil.
	activeView selector: nil