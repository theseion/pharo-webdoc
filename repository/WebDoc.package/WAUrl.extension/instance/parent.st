*WebDoc
parent
	"return the url of the parent directory"
	^ self copy
		path: path allButLast;
		yourself