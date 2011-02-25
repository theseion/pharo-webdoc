accessing
selectClass: aClass
	
	selectedPackage := RPackageOrganizer default packageOfClassNamed: aClass name.
	selectedClass := aClass.
	self selectMethod: nil.