routes
popUpSelector: aSelector
	<get>
	<path: 'popup/selector/list/{aSelector}'>
	activeView := self selectorPopup.
	activeView category: nil.
	activeView selector: aSelector asSymbol