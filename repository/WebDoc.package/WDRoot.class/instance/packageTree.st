accessing
packageTree
	^ packageTree ifNil: [ 
		packageTree := self newChildView: WDPackageTree.
		packageTree environment: self environment.
		packageTree.].