rendering-formatting
formatLiteral: literal style: styleClass
	html anchor
		url: (self urlForClass: literal class);
		class: styleClass; 
		with: literal