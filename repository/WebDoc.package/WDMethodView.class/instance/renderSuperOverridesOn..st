rendering
renderSuperOverridesOn: html
	| classes |
	classes := self viewClass allSuperclasses select: [ :superclass|
		(superclass selectors includes: self method selector)].
	
	classes ifEmpty: [ ^ self].
	
	html heading level3 with: 'Overrides:'.
	html unorderedList class: 'overload'; "meh, wrong term" with: [
		classes do: [:superclass| 
			html listItem class: 'overload_item'; with: [
				self renderSelectorLink: self method class: superclass on: html ] ] ]