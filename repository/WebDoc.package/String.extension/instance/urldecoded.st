*WebDoc
urldecoded
	self shouldBeImplemented.
	^ String new: self size streamContents: [ :s |
		(WAUrlEncoder on: s) nextPutAll: self ]