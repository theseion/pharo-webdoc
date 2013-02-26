initialization
initialize
	super initialize.
	packages := RPackageOrganizer default packages.
	hierarchy := Stack new.
	packages sort: [:a :b| a name <= b name].