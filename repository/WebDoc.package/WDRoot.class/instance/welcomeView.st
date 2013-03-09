accessing
welcomeView
	^ welcomeView ifNil: [ 
			welcomeView := self newChildView: WDWelcomeView ].