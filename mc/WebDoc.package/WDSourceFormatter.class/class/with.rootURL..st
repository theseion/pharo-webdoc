instance creation
with: aMethod rootURL: aString
	^ self new 
		rootURL: aString;
		method: aMethod;
		ast: aMethod ast;
		yourself