as yet unclassified
rootURL: aString
	super rootURL: aString.
	searchGroups do: [ :each| each rootURL: rootURL ].