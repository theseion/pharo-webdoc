accessing
environment
	^ environment ifNil: [ 
		environment := RBBrowserEnvironment default ]