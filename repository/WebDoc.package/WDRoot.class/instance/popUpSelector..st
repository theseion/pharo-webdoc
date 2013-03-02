routes
popUpSelector: aSelector
	<get>
	<path: 'popup/selector/list/{aSelector}.html'>
   <produces: 'text/html'>
	
	activeView := self selectorPopup.
	activeView category: nil.
	activeView selector: aSelector asSymbol