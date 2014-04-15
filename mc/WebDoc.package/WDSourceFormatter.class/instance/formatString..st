rendering-formatting
formatString: aString
	 html anchor 
		url: (self urlForClass: aString class);
		class: 'stStringLiteral'; 
		with: '''', aString, ''''.