hooks
initialRequest: aRequest
	| aRouteResult|
	super initialRequest: aRequest.
	aRouteResult := routes 
		routeForContext: self requestContext 
		ifAbsent: [ ^ self respondNotFound ].
	aRouteResult sendMessageTo: self.
	
	