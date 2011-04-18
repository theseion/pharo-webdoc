routes
popUpClass: className
	<GET>
	<Path: 'popup/class/{className}'>
	self halt.
	activeView := WDMainView new.