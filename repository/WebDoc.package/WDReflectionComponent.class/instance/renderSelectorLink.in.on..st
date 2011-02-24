rendering
renderSelectorLink: selector in: class on: html
	html anchor
		class: 'method_link';
		callback: [ self selectSelector: selector in: class];
		with: selector name.