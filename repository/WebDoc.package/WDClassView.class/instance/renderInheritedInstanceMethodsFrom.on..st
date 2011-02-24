rendering
renderInheritedInstanceMethodsFrom: class on: html
	html div
		class: 'inheritedMethod';
		with: [
			html text: 'Methods inherited from '.
			self renderClassLink: class on: html.
			self renderSelectorList: class selectors asArray sort  in: class on: html]