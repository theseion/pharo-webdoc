routes
selectors
	<get>
	<path: 'selector.html'>
   <produces: 'text/html'>
	
	activeView := self selectorView.
	activeView category: nil.
	activeView selector: nil