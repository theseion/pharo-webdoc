rendering
renderClass: class on: html
	self renderClassLink: class on: html.
	class isTrait 
		ifFalse: [ html text: ' < '; text: class superclass name].
	html small
		class: 'search_info';
		with: class name.