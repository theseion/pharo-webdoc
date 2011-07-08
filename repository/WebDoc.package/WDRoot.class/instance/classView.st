accessing
classView
	^ classView ifNil: [ 
			classView := self newChildView: WDClassView].