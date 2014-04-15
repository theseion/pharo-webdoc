accessing
packageTree
	^ packageTree ifNil: [ 
		packageTree := self newChildView: WDPackageTree ].