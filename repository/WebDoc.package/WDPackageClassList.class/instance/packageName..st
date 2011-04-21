as yet unclassified
packageName: aPackageName
	selectedPackage := RPackageOrganizer default packageNamed: aPackageName.
	classes := selectedPackage allDefinedClasses sort: [ :a :b | a name <= b name ].