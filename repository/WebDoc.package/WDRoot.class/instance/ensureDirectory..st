exporting
ensureDirectory: aFileReference 
	(FileDirectory on: aFileReference fullName) exists 
		ifTrue: [ ^ self ].
	self ensureDirectory: aFileReference parent.
	(FileDirectory on: aFileReference parent fullName) createDirectory: aFileReference basename.