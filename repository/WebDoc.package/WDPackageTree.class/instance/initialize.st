as yet unclassified
initialize
	super initialize.
	packages := RPackageOrganizer default packages.
	packages sort: [:a :b| a name <= b name].