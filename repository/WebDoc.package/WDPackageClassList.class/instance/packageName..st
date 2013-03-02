accessing
packageName: aPackageName
	selectedPackage := PackageOrganizer default 
		packageNamed: aPackageName 
		ifAbsent: [ self respondNotFound ].
	
	classes := selectedPackage isNil
					ifTrue: [ #() ]
					ifFalse: [ selectedPackage classes sort: [ :a :b | a name <= b name ] ].