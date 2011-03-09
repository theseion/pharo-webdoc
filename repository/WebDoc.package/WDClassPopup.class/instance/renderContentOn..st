as yet unclassified
renderContentOn: html

	self selectedClass ifNil: [ ^ html text: 'no class selected' ].
	
	self renderClassName: self selectedClass name on: html.
	"self renderClassDefinition: self selectedClass on: html."
	self renderClassComment: self selectedClass comment on: html.
	"self renderClassMethodsSummaryFor: self selectedClass on: html.
	self renderInstanceMethodsSummaryFor: self selectedClass on: html"