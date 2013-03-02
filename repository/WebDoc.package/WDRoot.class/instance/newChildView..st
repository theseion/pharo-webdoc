initialization
newChildView: aClass
	|instance|
	instance := aClass new.
	instance rootURL: self rootURL.
	^ instance