rendering
renderContentOn: html

	self selectedClass ifNil: [ ^ html text: 'no class selected' ].
	self renderHeaderOn: html.
	html div
		id: 'content';
		with: [
			1halt.
			self renderClassName: self selectedClass name on: html.
			self renderClassDefinition: self selectedClass on: html.
			self renderClassComment: self selectedClass comment on: html.
			
			self renderClassMethodsSummaryFor: self selectedClass on: html.
			self renderInstanceMethodsSummaryFor: self selectedClass on: html.
			
			self renderClassMethodsDetailsFor: self selectedClass on: html.
			self renderInstanceMethodsDetailsFor: self selectedClass on: html]