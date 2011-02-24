as yet unclassified
renderSuperOverridesOn: html
	| classes |
	classes := class allSuperclasses select: [ :superclass|
		(superclass selectors includes: method selector)].
	
	classes ifEmpty: [ ^ self].
	
	html div 
		class: 'methodOverrideSuper';
		with: [
			html text: 'Overrides:'.
			classes do: [:superclass| 
				self renderSelectorLink: method selector class: superclass on: html]]