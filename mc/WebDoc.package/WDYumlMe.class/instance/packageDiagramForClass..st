generating
packageDiagramForClass: aClass
	selectedClass := aClass.
	^ self inheritanceDiagramForPackage: (RPackageOrganizer default packageOf: aClass).