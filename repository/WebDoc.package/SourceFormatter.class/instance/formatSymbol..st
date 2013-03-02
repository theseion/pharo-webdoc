rendering-formatting
formatSymbol: aSymbol
	| url |
	url := rootURL, '/selectors/', aSymbol asString.
	
	html anchor 
		url: url;
		class: 'stSymbolLiteral'; 
		with: ( inLiteralArray 
				ifTrue: [aSymbol]
				ifFalse: ['#''', aSymbol, '''']).