as yet unclassified
renderContentOn: html
	selectedClass ifNil: [ ^ html text: 'no class selected' ].
	
	html div
		class: 'content';
		with: [
			self renderClassName: selectedClass name on: html.
			self renderClassDefinition: selectedClass on: html.
			self renderClassComment: selectedClass comment on: html].
	html div 
		class: 'selectorList';
		with: [self renderSelectorsOfClass: selectedClass on: html].