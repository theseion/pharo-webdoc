accessing
environment: anRBEnvironemnt
	environment := anRBEnvironemnt.
	self childViews do: [ :each |
		each environment: environment ].