accessing
packageName: aPackageName
	selectedPackage := PackageOrganizer default packageNamed: aPackageName ifAbsent: [ nil ].
	
	classes := selectedPackage isNil
					ifTrue: [ #() ]
					ifFalse: [ selectedPackage classes sort: [ :a :b | a name <= b name ] ].