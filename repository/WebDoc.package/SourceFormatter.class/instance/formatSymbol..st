as yet unclassified
formatSymbol: aSymbol
	| url |
	url := '/selectors/', aSymbol asString.
	
	html anchor 
		url: url;
		class: 'stSymbolLiteral'; 
		with: ( inLiteralArray 
				ifTrue: [aSymbol]
				ifFalse: ['#''', aSymbol, '''']).