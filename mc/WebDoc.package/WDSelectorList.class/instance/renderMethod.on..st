rendering
renderMethod: method on: html
	| class |
	class := method methodClass.
	self renderMethodLink: method on: html.
"	class isTrait 
		ifFalse: [ html text: ' < '; text: class superclass name]."
	html small
		class: 'search_info';
		with: class name.