accessing
packageClassView
	^ packageClassView ifNil: [ 
			packageClassView := self newChildView: WDPackageClassList].