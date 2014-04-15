encoding
encodePathOn: aDocument
	path isNil ifTrue: [ ^ self ].
	path isEmpty ifTrue: [ ^ aDocument nextPut: $. ].
	
	path keysAndValuesDo: [ :index :each |
		index > 1
			ifTrue: [ 	aDocument nextPut: $/ ].
		aDocument urlEncoder nextPutAll: each.
		pathParameters isNil ifFalse: [
			self encodePathParametersAt: index on: aDocument ]].