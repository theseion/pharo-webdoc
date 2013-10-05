accessing
rootURL: anURLString
	rootURL := anURLString.
	
	self childViews do: [ :each |
		each rootURL: anURLString ].