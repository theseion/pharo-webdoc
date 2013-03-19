*WebDoc
webdocEncoded
	"we want to store files with urlencoded names on disk hence we double encode the name here"
	^  self class new: self size streamContents: [ :s |
		( WAUrlEncoder on: (WAUrlEncoder on: s)) nextPutAll: self ]