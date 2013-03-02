rendering
formatMethod: aMethod value: aString

	html anchor 
		url: (self urlForMethod: aMethod);
		class: 'stSelector'; 
		with: aString.