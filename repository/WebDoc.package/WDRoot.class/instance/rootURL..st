as yet unclassified
rootURL: anURLString
	rootURL := anURLString.
	
	self childViews do: [ :each |
		each rootURL: anURLString ].