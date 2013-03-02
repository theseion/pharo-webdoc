rendering-formatting
formatNil: aNode
	html anchor
		class: 'stNil';
		url: rootURL, '/class/UndefinedObject';
		with: 'nil'.