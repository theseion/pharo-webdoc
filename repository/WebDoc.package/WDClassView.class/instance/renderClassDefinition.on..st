rendering
renderClassDefinition: class on: html
	html definitionList
		class: 'box';
		with: [
			html definitionTerm 
				with: 'Subclass of: '.
			self renderInheritListOn: html].
	html div clear.
	html anchor
       url: (SWYumlMe new setDirectionLeftRight; scale:75; inheritanceDiagramForClass: class );
		relationship: 'external';
		with: 'View inheritance diagram'.
