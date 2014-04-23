initialization
addPackageNamed: aString
	self addPackage: (RPackageOrganizer default packageNamed: aString ifAbsent: [^self]).