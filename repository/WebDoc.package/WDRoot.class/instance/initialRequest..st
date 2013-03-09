hooks
initialRequest: aRequest
	| aRouteResult|
	
	super initialRequest: aRequest.
	aRouteResult := routes 
		routeForContext: self requestContext 
		ifAbsent: [ 
			^ (aRequest uri asString = self rootURL or: [ aRequest uri asString = (self rootURL, '/')])
				ifTrue: [ self redirectTo: self rootURL, '/index.html' ]
				ifFalse: [ self respondNotFound ]].
			
	aRouteResult sendMessageTo: self.
	
	