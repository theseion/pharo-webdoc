routes
class: aClassName classMethod: aSelector
	<GET>
	<Path: 'popup/class/{aClassName}/class/method/{aSelector}'>
	self halt.
	activeView := WDMainView new.