rendering-formatting
formatClass: aClass
	html anchor
		url: (self urlForClass: aClass);
		class: 'stClassLiteral';
		with: aClass.
		