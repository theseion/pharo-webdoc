rendering-formatting
formatInstanceVariable: aNode
	html anchor
		class: 'stInstanceVariable';
		url: (self urlForInstanceVariable: aNode name inClass: method methodClass);
		with: aNode name.