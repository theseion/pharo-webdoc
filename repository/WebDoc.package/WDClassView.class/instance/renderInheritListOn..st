as yet unclassified
renderInheritListOn: html
	html definitionData
		with: [
			html span
				class: 'inheritName';
				with: [ self renderClassLink: selectedClass superclass on: html ].
				
			self renderFullInheritanceTreeOn: html.
			
			html anchor
				with: 'show all']	