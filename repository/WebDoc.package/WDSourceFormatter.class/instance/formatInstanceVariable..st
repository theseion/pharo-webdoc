rendering-formatting
formatInstanceVariable: aNode
	html anchor
		url: (self urlForInstanceVariable: aNode name inClass: method methodClass);
		class: 'stInstanceVariable';
		with: aNode name.