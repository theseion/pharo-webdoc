instance creation
listMethod: method class: aClass
	^ self new
		method: method;
		viewClass: aClass;
		showClassLinks: false;
		yourself