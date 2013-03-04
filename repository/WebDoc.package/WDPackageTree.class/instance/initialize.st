initialization
initialize
	super initialize.
	packages := PackageOrganizer default packages.
	hierarchy := Stack new.
	packages sort: [:a :b| a packageName <= b packageName].