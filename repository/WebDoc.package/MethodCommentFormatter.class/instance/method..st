accessing
method: aMethod
	method := aMethod.
	comment := aMethod comment asString.
	parser := PPMarkdownParser new.
	markdown := parser parse: comment.