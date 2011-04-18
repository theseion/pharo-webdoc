routes
popUpClass: aClassName instanceMethod: aSelector
	<GET>
	<Path: 'popUp/class/{aClassName}/method/{aSelector}'>
	self halt.
	activeView := WDMainView new.