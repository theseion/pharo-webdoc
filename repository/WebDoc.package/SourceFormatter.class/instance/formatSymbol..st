rendering-formatting
formatSymbol: aSymbol
	| url |
	url := rootURL, '/selectors/', aSymbol asString.
	
	html anchor 
		url: url;
		class: 'stSymbolLiteral'; 
		with: (String streamContents: [ :s| aSymbol printOn: s]).