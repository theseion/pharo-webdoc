as yet unclassified
initialize
	super initialize.
	searchGroups := OrderedCollection new.
	searchGroups add: WDPackageSearchGroup new.
	searchGroups add: WDMethodSearchGroup new.
	searchGroups add: WDClassSearchGroup new.