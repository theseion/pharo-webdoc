as yet unclassified
renderSelector: selector on: html
	html anchor
		class: 'selector_link';
		url: ('/selector/', selector name);
		"callback: [ self selectSelector: selector];"
		with: selector.