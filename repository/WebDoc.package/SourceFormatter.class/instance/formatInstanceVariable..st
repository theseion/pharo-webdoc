rendering-formatting
formatInstanceVariable: aNode
	html anchor
		class: 'stInstanceVariable';
		url: rootURL, '/class/', method methodClass name, '/instvar/', aNode name;
		with: aNode name.