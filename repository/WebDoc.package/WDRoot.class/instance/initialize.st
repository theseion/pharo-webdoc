initialization
initialize
	super initialize.
	mainView := self newChildView: WDMainView.
	self initializeRoutes.