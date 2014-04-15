rendering
renderInheritedMethodsFrom: class on: html
	| selectors |
	selectors := self selectorsForClass: class.
	selectors ifEmpty: [ ^ self ].
	
	html div
		class: 'inheritedMethod';
		with: [
			html heading level3;
				class: 'inherited';
				with: [
					html text: selectors size asString; text: ' methods inherited from '.
					self renderClassLink: class on: html ].
			self renderSelectorList: selectors in: class on: html ]