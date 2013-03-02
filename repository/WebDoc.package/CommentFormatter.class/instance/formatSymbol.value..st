as yet unclassified
formatSymbol: aSymbol value: aString
	| url implementors |
	
	implementors := SystemNavigation default allImplementorsOf: aSymbol.
	
	implementors size = 0
		ifTrue: [ ^ html text: aString ].
	
	implementors size = 1
		ifTrue: [ ^ self formatMethod: implementors first value: aString ].
	
	url := rootURL,'/selector/list/', aSymbol asString.
	
	html anchor 
		url: url;
		class: 'stSymbolLiteral'; 
		with: aString.