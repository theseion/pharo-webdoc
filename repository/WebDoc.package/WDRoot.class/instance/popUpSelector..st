routes
popUpSelector: aSelector
	<GET>
	<Path: '/popup/selector/list/{aSelector}'>
	activeView := self selectorPopup.
	activeView category: nil.
	activeView selector: aSelector asSymbol.