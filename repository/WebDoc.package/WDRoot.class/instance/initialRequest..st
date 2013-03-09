hooks
initialRequest: aRequest
	| aRouteResult|
	
	super initialRequest: aRequest.
	aRouteResult := routes 
		routeForContext: self requestContext 
		ifAbsent: [ 
			^ (aRequest uri asString = self rootURL or: [ aRequest uri asString = (self rootURL, '/')])
				ifTrue: [ activeView := mainView ]
				ifFalse: [ self respondNotFound ]].
			
	aRouteResult sendMessageTo: self.
	
	