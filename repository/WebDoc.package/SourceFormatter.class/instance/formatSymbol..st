rendering-formatting
formatSymbol: aSymbol
	| url |
	url := '/doc/selectors/', aSymbol asString.
	
	html anchor 
		url: url;
		class: 'stSymbolLiteral'; 
		with: ( inLiteralArray 
				ifTrue: [aSymbol]
				ifFalse: ['#''', aSymbol, '''']).