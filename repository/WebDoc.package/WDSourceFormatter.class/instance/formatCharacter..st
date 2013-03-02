rendering-formatting
formatCharacter: aCharacter
	html anchor 
		url: (self urlForClass: aCharacter class);
		class: 'stCharacterLiteral'; 
		with: '$', aCharacter asString.