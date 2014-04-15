rendering-formatting
formatSymbol: aSymbol
	
	html anchor 
		url: (self urlForSelector: aSymbol);
		class: 'stSymbolLiteral'; 
		with: ( inLiteralArray 
				ifTrue: [aSymbol]
				ifFalse: ['#''', aSymbol, '''']).