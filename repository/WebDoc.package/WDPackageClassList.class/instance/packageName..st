as yet unclassified
packageName: aPackageName
	selectedPackage := PackageOrganizer default packageNamed: aPackageName ifAbsent: [ nil ].
	classes := selectedPackage classes sort: [ :a :b | a name <= b name ].