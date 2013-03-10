accessing
contentsForName: aFileName
	^ self perform: (self class asSelector: aFileName)