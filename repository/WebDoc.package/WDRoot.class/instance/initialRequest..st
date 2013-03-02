hooks
initialRequest: aRequest
	| aRouteResult|
	super initialRequest: aRequest.
	aRouteResult := routes 
		routeForContext: self requestContext 
		ifAbsent: [ ^ activeView := mainView].
	aRouteResult sendMessageTo: self.
	
	