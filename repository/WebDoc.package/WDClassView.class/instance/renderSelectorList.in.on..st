as yet unclassified
renderSelectorList:  selectors in: class on: html
	html paragraph
		class: 'inheritedMethodList';
		with: [ 
			selectors  
				do: [ :selector| self renderSelectorLink: selector in: class on: html]
				separatedBy: [html text: ', ']]