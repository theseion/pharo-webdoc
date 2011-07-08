initialization
initialize
	super initialize.
	mainView := self newChildView: WDMainView.
	routes := WAByMethodRoutes routes: (WAPragmaBasedRouteBuilder createRoutesFor: self class).