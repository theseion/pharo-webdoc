rendering
renderSelector: aSymbol on: html
	html anchor
		class: 'selector_link';
		class: 'object_link';
		url: ('/doc/selector/list/', aSymbol);
		title: aSymbol, ' (selector)';
		with: aSymbol.
		
	html small
		class: 'search_info';
		with: aSymbol.