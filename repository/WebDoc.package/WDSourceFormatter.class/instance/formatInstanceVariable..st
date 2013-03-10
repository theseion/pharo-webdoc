rendering-formatting
formatInstanceVariable: aNode
	html anchor
		url: (self poupURLForInstanceVariable: aNode name inClass: method methodClass);
		class: 'stInstanceVariable';
		with: aNode name.