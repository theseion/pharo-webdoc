routes
popUpSelector: aSelector
	<GET>
	<Path: '/popup/selector/{aSelector}'>
	self halt.
	activeView := WDMainView new.