convenience
packageNamed: aString 
	"Return PackageInfo instance with given name"
	 ^ PackageOrganizer default packageNamed: aString ifAbsent: [^ nil].
	