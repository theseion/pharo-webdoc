rendering
renderSelectorLink: method in: class on: html
	html anchor
		class: 'object_link';
		class: 'method_link';
		callback: [ self selectSelector: method in: class];
		with: method selector.