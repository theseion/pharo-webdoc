rendering
formatSymbol: aSymbol value: aString
	| implementors |
	
	implementors := self allImplementorsOf: aSymbol.
	
	implementors size = 0
		ifTrue: [ ^ html text: aString ].
	
	implementors size = 1
		ifTrue: [ ^ self formatMethod: implementors first value: aString ].
	
	html anchor 
		url: (self urlForSelector: aSymbol);
		class: 'stSymbolLiteral'; 
		with: aString.