routes
selectors
	<GET>
	<Path: '/selector'>
	activeView := self selectorView.
	activeView category: nil.
	activeView selector: nil.