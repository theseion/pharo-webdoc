rendering
renderSearchResult: aMethod on: html
	|class selector|
	selector := aMethod selector.
	class := aMethod methodClass.
	html anchor
		class: 'search_method_link';
		url: (self urlForMethod: aMethod);
		with: class name, ' >> ', selector.