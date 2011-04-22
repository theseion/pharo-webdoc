rendering
renderClassDefinition: class on: html
	html definitionList
		class: 'box';
		with: [
			html definitionTerm 
				with: 'Subclass of: '.
			self renderInheritListOn: html].
	html div clear