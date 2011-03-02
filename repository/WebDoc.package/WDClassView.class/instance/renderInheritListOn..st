url
renderInheritListOn: html
	|superclass|
	superclass := self selectedClass superclass.
	html definitionData
		with: [
			html span
				class: 'inheritName';
				with: [ superclass isNil
						ifTrue: [ html text: 'nil']
						ifFalse: [self renderClassLink: superclass on: html ]].
				
			self renderFullInheritanceTreeOn: html.
			
			html anchor
				class: 'inheritanceTree';
				with: 'show all']	