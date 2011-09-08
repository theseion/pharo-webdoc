as yet unclassified
renderClassComment: aString on: html
	html div
		class: 'docString';
		with: (CommentFormatter with: aString string rootURL: rootURL)