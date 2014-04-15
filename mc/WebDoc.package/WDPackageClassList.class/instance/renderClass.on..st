rendering
renderClass: class on: html
	self renderClassLink: class on: html.
	class isTrait 
		ifFalse: [ 
			html space; html: '&#x25c1;'; space; text: class superclass name].
	html small
		class: 'search_info';
		with: class name.