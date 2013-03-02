as yet unclassified
renderClassComment: aString on: html
	html div
		class: 'docString';
		with: (WDCommentFormatter with: aString string rootURL: rootURL)