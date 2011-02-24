as yet unclassified
renderClass: class on: html
	self renderClassLink: class on: html.
	class isTrait 
		ifFalse: [ html text: ' < '; text: class superclass name].