accessing
packageTree
	^ packageTree ifNil: [ 
			packageTree := WDPackageTree new].