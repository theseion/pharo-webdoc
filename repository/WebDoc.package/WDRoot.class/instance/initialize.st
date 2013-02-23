initialization
initialize
	super initialize.
	mainView := self newChildView: WDMainView.
	routes := WAByMethodRoutes routes: (WARouteBuilder createRoutesFor: self class).