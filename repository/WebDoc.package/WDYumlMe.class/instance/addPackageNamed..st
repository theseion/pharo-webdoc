initialization
addPackageNamed: aString
	self addPackage: (PackageOrganizer default packageNamed: aString ifAbsent: [^self]).