as yet unclassified
renderClassDefinition: class on: html
	html definitionList
		class: 'box';
		with: [
			html definitionTerm 
				with: 'Inherits: '.
			self renderInheritListOn: html] 