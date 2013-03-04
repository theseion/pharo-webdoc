initialization
initialize
	super initialize.
	packages := PackageOrganizer default packages.
	packages sort: [:a :b| a packageName <= b packageName].