accessing
packageName: aPackageName
	selectedPackage := self environment 
		packageAt: aPackageName 
		ifAbsent: [ self respondNotFound ].
	
	self resetClassList.