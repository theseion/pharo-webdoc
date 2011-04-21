routes
popUpSelector: aSelector
	<GET>
	<Path: '/popup/selector/{aSelector}'>
	activeView := self selectorPopup.
	activeView category: nil.
	activeView selector: aSelector asSymbol.