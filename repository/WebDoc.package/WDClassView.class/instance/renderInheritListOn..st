url
renderInheritListOn: html
	|superclass|
	self selectedClass isTrait 
		ifTrue: [superclass  := Trait]
		ifFalse:[	superclass := self selectedClass superclass].
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
				with: [html html: '&oplus;']]	