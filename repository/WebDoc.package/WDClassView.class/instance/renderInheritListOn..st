rendering
renderInheritListOn: html
	html definitionData
		with: [
			html span
				class: 'inheritName';
				with: [ self renderClassLink: self selectedClass superclass on: html ].
				
			self renderFullInheritanceTreeOn: html.
			
			html anchor
				class: 'inheritanceTree';
				with: 'show all']	