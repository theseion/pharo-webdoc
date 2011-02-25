rendering
renderSelectorList: methods in: class on: html
	html paragraph
		class: 'inherited';
		class: 'inheritedMethodList';
		with: [ 
			methods  
				do: [ :method| self renderSelectorLink: method in: class on: html]
				separatedBy: [html text: ', ']]