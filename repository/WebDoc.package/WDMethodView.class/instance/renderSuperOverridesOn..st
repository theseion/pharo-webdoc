rendering
renderSuperOverridesOn: html
	| classes |
	classes := self viewClass allSuperclasses select: [ :superclass|
		(superclass selectors includes: self method selector)].
	
	classes ifEmpty: [ ^ self].
	
	html div 
		class: 'methodOverrideSuper';
		with: [
			html text: 'Overrides:'.
			classes do: [:superclass| 
				self renderSelectorLink: self method class: superclass on: html]]