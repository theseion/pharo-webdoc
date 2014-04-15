rendering
renderMethodLink: aMethod named: name on: html

	html anchor
		class: 'object_link';
		class: 'method_link';
		class: 'stSelector';
		target: 'classView';
		url: (self urlForMethod: aMethod);
		with: name.