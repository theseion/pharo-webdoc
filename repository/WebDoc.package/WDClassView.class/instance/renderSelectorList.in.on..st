rendering
renderSelectorList: methods in: class on: html
	html paragraph
		class: 'inherited';
		class: 'inheritedMethodList';
		style: ((methods size > 20) ifTrue: [ 'display: none;'] ifFalse: ['']);
		with: [ 
			methods 
				do: [ :method| 
					self renderSelectorLink: method in: class on: html]
				separatedBy: [html text: ', ']]