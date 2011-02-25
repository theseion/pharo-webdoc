rendering
renderContentOn: html
	self selectedClass ifNil: [ ^ html text: 'no class selected' ].
	
	html div
		class: 'content';
		with: [
			self renderClassName: self selectedClass name on: html.
			self renderClassDefinition: self selectedClass on: html.
			self renderClassComment: self selectedClass comment on: html.
			self renderClassMethodsSummaryFor: self selectedClass on: html.
			self renderInstanceMethodsSummaryFor: self selectedClass on: html.
			self renderClassMethodsDetailsFor: self selectedClass on: html.
			self renderInstanceMethodsDetailsFor: self selectedClass on: html.].
	"html div 
		class: 'selectorList';
		with: [self renderSelectorsOfClass: self selectedClass on: html]."