as yet unclassified
renderContentOn: html
	selectedClass ifNil: [ ^ html text: 'no class selected' ].
	
	html div
		class: 'classView';
		with: [
			self renderClassName: selectedClass name on: html.
			self renderClassComment: selectedClass comment on: html.
			self renderClassHierarchy: selectedClass on: html.
		].
	html div 
		class: 'selectorList';
		with: [self renderSelectorsOfClass: selectedClass on: html].