as yet unclassified
renderChildrenOverridesOn: html		
	| classes |
	classes := class subclasses select: [ :superclass|
		(superclass selectors includes: method selector)].
	
	classes ifEmpty: [ ^ self].
	
	html div 
		class: 'methodOverrideChildren';
		with: [
			html text: 'Overriden in:'.
			classes do: [:superclass| 
				self renderSelectorLink: method selector class: superclass on: html]]