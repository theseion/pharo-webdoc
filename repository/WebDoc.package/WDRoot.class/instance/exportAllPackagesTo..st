exporting
exportAllPackagesTo: aFileReference
	
	self exportURL: self urlForPackage to: aFileReference.
	
	self packageTree packages
		do: [ :package | self exportURL: (self urlForPackage: package packageName) to: aFileReference ]
		displayingProgress: 'Exporting Packages'