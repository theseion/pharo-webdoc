initialization
initialize
	| application |
	super initialize.
	application := WAAdmin register: self asApplicationAt: self rootURL.
	application configuration 
		at: #useCookies put: true.
	self halt.