rendering-formatting
formatGlobal: aGlobal named: aName
	html anchor
		url: (self urlForClass: aGlobal class);
		class: 'stGlobalLiteral';
		with: aName.
		