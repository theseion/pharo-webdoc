as yet unclassified
renderSearchFieldOn: html
	implementors size > 10 
		ifFalse: [^ self].
	super renderSearchFieldOn: html.
	