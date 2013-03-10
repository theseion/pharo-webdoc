accessing
fileLibrary
	^ fileLibrary ifNil: [ 
			fileLibrary := self newChildView: WDFileLibrary ].