*WebDoc
urlencoded
	^ String new: self size streamContents: [ :s |
		(WAUrlEncoder on: s) nextPutAll: self ]