exporting
exportAllPackages
	
	self exportURL: self urlForPackage.
	
	self packageTree packages
		do: [ :package | self exportURL: (self urlForPackage: package packageName) ]
		displayingProgress: 'Exporting Packages'