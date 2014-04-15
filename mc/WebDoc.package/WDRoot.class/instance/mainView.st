accessing
mainView
	^ mainView ifNil: [ 
		mainView := self newChildView: WDMainView ].