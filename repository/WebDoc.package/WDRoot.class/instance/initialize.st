initialization
initialize
	super initialize.
	mainView := WDMainView new.
	routes := WAByMethodRoutes routes: (WAPragmaBasedRouteBuilder createRoutesFor: self class).