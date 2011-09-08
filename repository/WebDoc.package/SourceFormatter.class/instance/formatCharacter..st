rendering-formatting
formatCharacter: aChar
	 html anchor 
		url: rootURL, '/class/', aChar class name;
		class: 'stCharacterLiteral'; 
		with: '$', aChar asString.