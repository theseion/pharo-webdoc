routes
class: aClassName instanceMethod: aSelector
	<GET>
	<Path: 'popup/class/{aClassName}/method/{aSelector}'>
	self halt.
	activeView := WDMainView new.