instance creation
with: aMethod rootURL: aString
	^ self new 
		rootURL: aString;
		method: aMethod;
		parseTree: aMethod parseTree;
		yourself