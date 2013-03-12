initialization
routes
	 ^ routes ifNil: [
			routes := WAByMethodRoutes routes: (WARouteBuilder createRoutesFor: self) ].