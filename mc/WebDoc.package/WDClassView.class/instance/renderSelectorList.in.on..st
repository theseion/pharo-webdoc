rendering
renderSelectorList: methods in: class on: html
	html paragraph
		class: 'inherited';
		class: 'inheritedMethodList';
		style: 'display: none;';
		with: [ 
			methods do: [ :method| 
				self renderSelectorLink: method in: class on: html.
				html text: ' ']]