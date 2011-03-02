rendering
renderInheritedInstanceMethodsFrom: class on: html
	|methods|
	methods := (class methodDict values asArray sort: [:a :b | a selector <= b selector]).
	html div
		class: 'inheritedMethod';
		with: [
			html heading level3;
				class: 'inherited';
				with: [
					methods isEmpty
						ifTrue: [html text: 'No methods inherited from ']
						ifFalse: [html text: methods size asString, ' methods inherited from '].
					self renderClassLink: class on: html].
			self renderSelectorList: methods  in: class on: html ]