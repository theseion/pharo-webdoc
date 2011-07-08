initialization
newChildView: aClass
	|instance|
	instance := aClass new.
	instance rootURL: '/webdoc/doc'.
	^ instance