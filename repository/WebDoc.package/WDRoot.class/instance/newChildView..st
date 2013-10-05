initialization
newChildView: aClass
	|instance|
	instance := aClass new.
	childViews add: instance.
	instance 
		rootURL: self rootURL;
		environment: self environment.
	^ instance