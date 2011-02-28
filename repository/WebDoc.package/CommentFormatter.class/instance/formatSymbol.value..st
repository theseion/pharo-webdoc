as yet unclassified
formatSymbol: aSymbol value: aString
	| url |
	url := '/selectors/', aSymbol asString.
	
	html anchor 
		url: url;
		class: 'stSymbolLiteral'; 
		with: aString.