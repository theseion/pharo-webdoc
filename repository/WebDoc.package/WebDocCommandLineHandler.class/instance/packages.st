accessing
packages
	| packageRegularExpressions packages |
	packages := Set new.
	packageRegularExpressions := self commandLine arguments allButFirst.
	packageRegularExpressions
		collect: [ :each | each asRegex ]
		thenDo: [ :regex |
			RPackageOrganizer default packages
				select: [ :package | regex search: package name ]
				thenDo: [ :package | packages add: package ]].
	^ packages