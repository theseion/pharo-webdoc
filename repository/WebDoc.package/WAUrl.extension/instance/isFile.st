*WebDoc
isFile
	"Return true if the url is possibly a file (aka the name includes a dot)"
	^ path 
		ifEmpty: [ false ]
		ifNotEmpty: [ path last includes: $. ]