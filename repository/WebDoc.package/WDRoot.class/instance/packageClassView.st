accessing
packageClassView
	^ packageClassView ifNil: [ 
			packageClassView := WDPackageClassList new].