as yet unclassified
formatSymbol: aSymbol value: aString
	| url |
	url := '/doc/selectors/', aSymbol asString.
	
	html anchor 
		url: url;
		class: 'stSymbolLiteral'; 
		with: aString.