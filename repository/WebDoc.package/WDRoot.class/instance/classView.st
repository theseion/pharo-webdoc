accessing
classView
	^ classView ifNil: [ 
		classView := self newChildView: WDClassView.
		classView environment: self environment.
		classView.].