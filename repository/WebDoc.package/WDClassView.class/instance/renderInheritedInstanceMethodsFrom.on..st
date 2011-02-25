rendering
renderInheritedInstanceMethodsFrom: class on: html
	html div
		class: 'inheritedMethod';
		with: [
			html heading level3;
				class: 'inherited';
				with: [
					html text: 'Methods inherited from '.
					self renderClassLink: class on: html ].
			self renderSelectorList: (class methodDict values asArray sort: [:a :b | a selector <= b selector])  in: class on: html ]