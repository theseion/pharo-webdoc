*SimpleWebDoc
allPackageNames 
	"Return names of all package with at least one class, alphabetically sorted"
	| packageWithClasses |
	packageWithClasses := PackageOrganizer default packages select: [:package|  package classes notEmpty].
	^ (packageWithClasses collect: [:package| package packageName]) sort