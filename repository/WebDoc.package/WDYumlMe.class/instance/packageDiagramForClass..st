generating
packageDiagramForClass: aClass
	selectedClass := aClass.
	^ self inheritanceDiagramForPackage: (PackageOrganizer default packageOfClass: aClass).