rendering-formatting
formatNil: aNode
	html anchor
		class: 'stNil';
		url: (self urlForClass: UndefinedObject);
		with: 'nil'.